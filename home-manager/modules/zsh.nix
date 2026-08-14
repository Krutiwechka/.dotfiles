{ config, pkgs, lib, ... }: 

{
  programs.zsh = {
    enable = true;

	#plugins
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

	#history
	history = {
	      size = 2048;
	      save = 4096;
	      path = "${config.home.homeDirectory}/.histfile";
	};
	
	#aliases
    shellAliases = {
		tg = "Telegram";
      	mc = "micro";
      	t = "trans";
      	tt = "trans :en";

      	shut = "shutdown now";

      	newyear = "bash ~/Downloads/hy.sh";

        gs = "git status";
        ga = "git add";
        gc = "git commit";
        gp = "git push";

        ".." = "cd ..";
      };
initContent = lib.mkAfter ''
      # fastfetch
      ${pkgs.fastfetch}/bin/fastfetch

      # Transient prompt logic
      autoload -Uz add-zle-hook-widget
      autoload -Uz add-zsh-hook

      function transient-prompt-zle-line-finish() {
        # Генерируем компактный промпт перед выполнением команды
        PROMPT="$(${pkgs.starship}/bin/starship prompt --profile transient)"
        RPROMPT="$(${pkgs.starship}/bin/starship prompt --profile rtransient)"
        zle .reset-prompt
      }

      add-zle-hook-widget zle-line-finish transient-prompt-zle-line-finish
    '';
   };
}
