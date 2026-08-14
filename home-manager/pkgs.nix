{ config, pkgs, inputs, ...}:

let 
	zen-browser = inputs.zen-browser.packages.${pkgs.system}.default;
in
{
	home.packages = with pkgs; [

		#workflow
		mako
		kitty
		rofi
		waybar

		#utils
		wl-clipboard
		xclip
		
		#cli
		micro
		fastfetch
		brightnessctl

		#apps
		telegram-desktop
		zen-browser
	];
}
