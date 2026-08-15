{
  programs.starship = {
    enable = true;
    enableZshIntegration = false;
    settings = {
		format = "$username[](fg:#3e0839 bg:#701E58)$directory[](fg:#701E58 bg:#a64d82)$git_branch$git_status$python$java$c$cpp[](fg:#a64d82 bg:#none)$fill[](fg:#701E58 bg:none)$cmd_duration[](fg:#3e0839 bg:#701E58)$time$line_break$character";
		character = {
			success_symbol = "[---✧](bold cyan)";
			error_symbol = "[---✧](bold red)";
		};
		username = {
			show_always = true;
			style_user = "bg:#3e0839 fg:#EDECF7";
			format = "[ $user ]($style)";
		};
		directory = {
			style = "bg:#701E58 fg:#EDECF7";
			format = "[ $path ]($style)[$read_only]($read_only_style)";
			truncation_symbol = "…/";
			truncation_length = 1;
			read_only = "󰌾";
			read_only_style = "bg:#4C566A fg:#BF616A";
		};
		fill = {
			symbol = "─";
			style = "bold grey";
		};
		python = {
			symbol = " ";
			style = "bg:#a64d82 fg:#000000";
			format = "[$symbol($version )]($style)";
		};
		
		java = {
		symbol = " ";
		style = "bg:#a64d82 fg:#000000";
		format = "[$symbol($version )]($style)";
		};
		c = {
		symbol = " ";
		style = "bg:#a64d82 fg:#000000";
		format = "[$symbol($version )]($style)";
		};
		
		cpp = {
		disabled = false;
		symbol = " ";
		style = "bg:#a64d82 fg:#000000";
		format = "[$symbol($version )]($style)";
		};
		
		cmd_duration = {
		min_time = 0;
		show_milliseconds = true;
		style = "bg:#701E58 fg:#EDECF7";
		format = "[  $duration ]($style)";
		};
		
		time = {
		disabled = false;
		time_format = "%T";
		style = "bg:#3e0839 fg:#EDECF7";
		format = "[ 󱑒 $time ]($style)";
		};
		
		git_branch = {
		symbol = " ";
		style = "bg:#a64d82 fg:#EDECF7";
		format = "[ $symbol$branch ]($style)";
		};
		
		git_status = {
		style = "bg:#a64d82 fg:#EDECF7";
		format = "[[($all_status$ahead_behind )]($style)]($style)";
		};
		profiles = {
		transient = "$character";
		rtransient = "";
		};
		
		
    };
  };
}
