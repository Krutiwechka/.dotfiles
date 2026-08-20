{ pkgs, ... }:

let
  sweet-dark-v40 = pkgs.stdenvNoCC.mkDerivation {
    pname = "sweet-dark-v40";
    version = "6.0";

    src = pkgs.fetchurl {
      url = "https://github.com/EliverLara/Sweet/releases/download/v6.0/Sweet-Dark-v40.tar.xz";
      sha256 = "sha256-aYPjnOEZMN9mPvnhK3eoCm1ybUxKPqPSoOL+kwsZsG4=";
    };

    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
      themeDir="$out/share/themes/Sweet-Dark-v40"
      mkdir -p "$themeDir"

      cp -r assets "$themeDir/"
      cp -r gtk-3.0 "$themeDir/"
      cp -r gtk-4.0 "$themeDir/"
      cp index.theme "$themeDir/"
    '';
  };
in
{
  gtk.theme = {
    name = "Sweet-Dark-v40";
    package = sweet-dark-v40;
  };
}
