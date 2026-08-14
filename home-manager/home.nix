{ config, pkgs, inputs, ... }:

let 
	zen-browser = inputs.zen-browser.packages.${pkgs.system}.default;
in

{
	imports = [
		./modules
	];
	home.username = "timojj";
	home.homeDirectory = "/home/timojj";
	home.stateVersion = "26.05";
	home.packages = with pkgs; [
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
	home.sessionVariables = {
	  # EDITOR = "emacs";
	};
	programs.home-manager.enable = true;
}
