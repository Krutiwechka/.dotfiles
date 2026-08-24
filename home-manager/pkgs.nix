{ config, pkgs, inputs, ...}:

{
	home.packages = with pkgs; [

		#workflow

		#utils
		wl-clipboard
		brightnessctl
		cliphist
		xclip
		tree
		zip
		unzip
		wget
		bottom
		ntfs3g
		udisks
		ripgrep
		eza
		fd
		#cli
		micro
		vim

		cmatrix
		#apps
		telegram-desktop
		tetrio-desktop
		obsidian
		#font
		nerd-fonts.fira-code
	];
}
