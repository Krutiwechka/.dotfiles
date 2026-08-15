{ pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = true;
  wayland.windowManager.hyprland.configType = "lua";

  wayland.windowManager.hyprland.settings.config = {
    #####################
    ### LOOK AND FEEL ###
    #####################

    general = {
      gaps_in = 0;
      gaps_out = 0;
      border_size = 2;

	"col.active_border" = {
        colors = [ "rgba(D063A8ee)" "rgba(80235Eee)" ];
        angle = 45; 
      };
      "col.inactive_border" = "rgba(3e0839aa)";

      resize_on_border = false;
      allow_tearing = false;
      layout = "dwindle";
    };

    decoration = {
      active_opacity = 1.0;
      inactive_opacity = 1.0;

      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
        color = "rgba(1a1a1aee)";
      };

      blur = {
        enabled = true;
        size = 3;
        passes = 1;
        vibrancy = 0.1696;
      };
    };

    animations = {
      enabled = false;

#      bezier = [
#        { _args = [ "easeOutQuint, 0.23, 1, 0.32, 1" ]; }
#        { _args = [ "easeInOutCubic, 0.65, 0.05, 0.36, 1" ]; }
#        { _args = [ "linear, 0, 0, 1, 1" ]; }
#        { _args = [ "almostLinear, 0.5, 0.5, 0.75, 1" ]; }
#        { _args = [ "quick, 0.15, 0, 0.1, 1" ]; }
#      ];

 #     animation = [
   #     { _args = [ "global, 1, 10, default" ]; }
  #      { _args = [ "border, 1, 5.39, easeOutQuint" ]; }
  #      { _args = [ "windows, 1, 4.79, easeOutQuint" ]; }
  #      { _args = [ "windowsIn, 1, 4.1, easeOutQuint, popin 87%" ]; }
  #      { _args = [ "windowsOut, 1, 1.49, linear, popin 87%" ]; }
  #      { _args = [ "fadeIn, 1, 1.73, almostLinear" ]; }
  #      { _args = [ "fadeOut, 1, 1.46, almostLinear" ]; }
  #      { _args = [ "fade, 1, 3.03, quick" ]; }
  #      { _args = [ "layers, 1, 3.81, easeOutQuint" ]; }
  #      { _args = [ "layersIn, 1, 4, easeOutQuint, fade" ]; }
  #      { _args = [ "layersOut, 1, 1.5, linear, fade" ]; }
  #      { _args = [ "fadeLayersIn, 1, 1.79, almostLinear" ]; }
  #      { _args = [ "fadeLayersOut, 1, 1.39, almostLinear" ]; }
  #      { _args = [ "workspaces, 1, 1.94, almostLinear, fade" ]; }
  #      { _args = [ "workspacesIn, 1, 1.21, almostLinear, fade" ]; }
  #      { _args = [ "workspacesOut, 1, 1.94, almostLinear, fade" ]; }
  #      { _args = [ "zoomFactor, 1, 7, quick" ]; }
  #    ];
  };

    master = {
      new_status = "master";
    };

    misc = {
      font_family = "FiraCode Nerd Mono";
      enable_swallow = true;
      swallow_regex = "^(kitty)$";
      enable_anr_dialog = true;
    };

    cursor = {
      inactive_timeout = 20;
      warp_on_change_workspace = 1;
    };

	gesture = [
      {
        fingers = 3;
        direction = "horizontal";
        action = "workspace";
      }
    ];
  };
}
