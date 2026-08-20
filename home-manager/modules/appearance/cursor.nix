{ pkgs, ... }:

let
  moga-neon-magenta = pkgs.stdenvNoCC.mkDerivation {
    pname = "moga-neon-magenta-cursor";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "Krutiwechka";
      repo = "moga-neon-magenta-cursor";
      rev = "main";                         
      sha256 = "sha256-ir348uF+2rg+RpOAYNrGoVMwOn34OhNfZuiElShGCqY=";
  };

    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
      themeDir="$out/share/icons"
      mkdir -p "$themeDir"
      cp -r Moga-Neon-Magenta "$themeDir"
    '';
  };
in
{
  home.pointerCursor = {
	enable = true;
    name = "Moga-Neon-Magenta";
    package = moga-neon-magenta;
    size = 16;
    gtk.enable = true;
    x11.enable = true;
  };
}
