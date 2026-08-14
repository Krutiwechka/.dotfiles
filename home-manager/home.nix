{ config, pkgs, inputs, ... }:

let 
	zen-browser = inputs.zen-browser.packages.${pkgs.system}.default;
in
{
  home.username = "timojj";
  home.homeDirectory = "/home/timojj";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
  	git
	kitty
	brightnessctl
	fastfetch
	micro
	telegram-desktop
	rofi
	mako 
	waybar
	wl-clipboard
	xclip
	zen-browser
  ];
  programs.git = {
  	enable = true;
  	userName = "Timojj";
  	userEmail = "krutiwechka@gmail.com";
  };
  xdg.configFile = {
  	"kitty".source = ../../dotfiles/.config/kitty;
  	"hypr".source = ../../dotfiles/.config/hypr;
  	"waybar".source = ../../dotfiles/.config/kitty;
  	
  }; 
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
