{pkgs, ...}:
{
	imports = [
		./theme.nix
	];
	gtk = {
		enable = true;

		iconTheme = {
		      name = "candy-icons";
		      package = pkgs.candy-icons;
		};

		font = {
		  name = "FiraCode Nerd Font Medium";
		  size = 11;
		};

		gtk3.extraConfig = {
		  gtk-application-prefer-dark-theme = true;
		};
	};
#	home.pointerCursor = {
#	  name = "Moga-Neon-Magenta";
#	  size = 16;
#	  package = pkgs.moga-cursors;
#	  gtk.enable = true;
#	  x11.enable = true;
#	};

	dconf.settings."org/gnome/desktop/interface" = {
	    gtk-theme = "Sweet-Dark-v40";
	    icon-theme = "candy-icons";
	    cursor-theme = "Moga-Neon-Magenta";
	    cursor-size = 16;
	    font-name = "FiraCode Nerd Font Medium 11";
	    document-font-name = "FiraCode Nerd Font Medium 11";
	    monospace-font-name = "FiraCode Nerd Font Mono Medium 11";
	    font-antialiasing = "rgba";
	    font-hinting = "slight";
	};
}
