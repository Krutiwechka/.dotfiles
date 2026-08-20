{ config, pkgs, inputs, ...}:

let 
	zen-browser = inputs.zen-browser.packages.${pkgs.system}.default;
in
{
	home.packages = with pkgs; [

		#workflow

		#utils
		wl-clipboard
		xclip
		tree
		zip
		unzip
		#cli
		micro
		brightnessctl
		vim

		cmatrix
		#apps
		telegram-desktop
		zen-browser
		tetrio-desktop
		#font
		nerd-fonts.fira-code
	];
}
