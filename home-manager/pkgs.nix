{ config, pkgs, inputs, ...}:

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
		tetrio-desktop
		#font
		nerd-fonts.fira-code
	];
}
