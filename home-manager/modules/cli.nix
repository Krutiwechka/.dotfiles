{
	programs = {
		zoxide = {
		  enable = true;
		  enableZshIntegration = true;
		  # options = [ "--cmd cd" ];
		};
		fzf = {
			enable = true;
			enableZshIntegration = true;

			defaultCommand = "fd --type f --hidden --exclude .git";
			fileWidget.command = "fd --type f --hidden --exclude .git"; 
			changeDirWidget.command = "fd --type d --hidden --exclude .git"; 

		};

		bat = {
			enable = true;
			config = {
				theme = "TwoDark"; 
			};
		};
		eza = {
		    enable = true;
		    enableZshIntegration = true;
		    colors = "always";
		    git = true;
		    icons = "always";
		    extraOptions = [
		      	"--group-directories-first"
		      	"--header"
		      	"--classify=auto"
		      	"--octal-permissions"
		      	"--time-style=long-iso"
		    ];
		};
	};
}
