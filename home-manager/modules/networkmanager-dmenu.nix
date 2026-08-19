{ pkgs, lib, ... }:

{
  home.packages = [ pkgs.networkmanager_dmenu];  
  xdg.configFile."networkmanager-dmenu/config.ini".text = lib.generators.toINI {} {
    dmenu = {
      dmenu_command = "rofi";
      active_chars = "==";
      highlight = true;
      highlight_fg = "";
      highlight_bg = "";
      highlight_bold = true;
      compact = true;
      pinentry = "";
      wifi_icons = "󰤯󰤟󰤢󰤥󰤨";
      format = "{name:<{max_len_name}s}  {sec:<{max_len_sec}s} {icon:>4}";
      list_saved = false;
      prompt = "Networks";
    };

    dmenu_passphrase = {
      obscure = true;
      obscure_color = "#222222";
    };

    pinentry = {
      description = "Get network password";
      prompt = "Password:";
    };

    editor = {
      terminal = "kitty";
      gui_if_available = true;
      gui = "nm-connection-editor";
    };

    nmdm = {
      rescan_delay = 5;
    };
  };
}
