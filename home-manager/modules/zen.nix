{ inputs, pkgs, lib,...}:

let
	extension = shortId: guid: {
	    name = guid;
	    value = {
	      install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
	      installation_mode = "normal_installed";
	    };
	  };
  prefs = {
    "extensions.autoDisableScopes" = 0;
    "extensions.pocket.enabled" = false;

    #telemetry
    "datareporting.healthreport.uploadEnabled" = false;
    "toolkit.telemetry.enabled" = false;
    "toolkit.telemetry.unified" = false;
    "browser.discovery.enabled" = false;
    "browser.newtabpage.activity-stream.feeds.telemetry" = false;

    #startup
    "browser.startup.homepage" = "about:blank";
    "browser.newtabpage.enabled" = true;

    #graphics rendering
    "media.ffmpeg.vaapi.enabled" = true;
    "gfx.webrender.all" = true;

    "media.peerconnection.enabled" = false;
    "geo.enabled" = false;
    "dom.battery.enabled" = false;
    "dom.event.clipboardevents.enabled" = false;

    #cookies
    "network.cookie.cookieBehavior" = 5;
    "network.cookie.lifetimePolicy" = 2;
    "network.http.referer.trimmingPolicy" = 2;
    "network.http.referer.XOriginPolicy" = 2;

	#theme
    "zen.view.window.scheme" = 0;
    "layout.css.prefers-color-scheme.content-override" = 0; 
  };

  extensions = [
  	#addons.mozilla.org/en-US/firefox/addon/<shortId>/
  	#addons.mozilla.org/api/v5/addons/addon/<shortId>/
    (extension "ublock-origin" "uBlock0@raymondhill.net")
    (extension "privacy-badger17" "jid1-MnnxcxisBPnSXQ@jetpack")
    (extension "sponsorblock" "sponsorBlocker@ajay.app")
    (extension "veepn-free-fast-security-vpn" "{94ed9bbf-a1e2-4e58-81ae-cd16dad818d8}")
  ];

in
{
  home.packages = [
    (pkgs.wrapFirefox
      inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.zen-browser-unwrapped
      {
        extraPrefs = lib.concatLines (
          lib.mapAttrsToList (
            name: value: ''lockPref(${lib.strings.toJSON name}, ${lib.strings.toJSON value});''
          ) prefs
        );

        extraPolicies = {
          DisableTelemetry = true;
          DisablePocket = true;

          DisableAppUpdate = true;

          ExtensionSettings = builtins.listToAttrs extensions;

          SearchEngines = {
            Default = "ddg";
            Add = [
              {
                Name = "nixpkgs packages";
                URLTemplate = "https://search.nixos.org/packages?query={searchTerms}";
                IconURL = "https://wiki.nixos.org/favicon.ico";
                Alias = "@np";
              }
              {
              	Name = "homemanager options";
              	URLTemplate = "https://home-manager-options.extranix.com/?query={searchTerms}&release=master";
              	IconURL = "https://wiki.nixos.org/favicon.ico";
              	Alias = "@ho";
              }
            ];
          };
        };
      }
    )
  ];
}



