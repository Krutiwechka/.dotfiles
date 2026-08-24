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
			fileWidgetCommand = "fd --type f --hidden --exclude .git"; 
			changeDirWidgetCommand = "fd --type d --hidden --exclude .git"; 

		};

		bat = {
			enable = true;
			style = "numbers,changes,header";
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
