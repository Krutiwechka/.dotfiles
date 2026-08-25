{ config, ... }:
let
  inherit (config.lib.formats.rasi) mkLiteral;
in {
  programs.rofi.theme = {
    "*" = {
      bg-col        = mkLiteral "#1B1116cc";
      bg-col-light  = mkLiteral "#1B1116cc";
      border-col    = mkLiteral "#A64D82cc";
      selected-col  = mkLiteral "#701E58cc";
      fg-col        = mkLiteral "#EDECF7FF";
      fg-col2       = mkLiteral "#6c7086";
      grey          = mkLiteral "#6c7086";

      background-color = mkLiteral "@bg-col";
      text-color       = mkLiteral "@fg-col";

      font = "FiraCode Mono Medium 12";
    };

    "window" = {
      transparency = "real";
      background-color = mkLiteral "@bg-col";
      border = mkLiteral "2px";
      border-color = mkLiteral "@border-col";
      width = mkLiteral "800px";
      location = mkLiteral "center";
      x-offset = 0;
      y-offset = 0;
    };

    "mainbox" = {
      background-color = mkLiteral "transparent";
      children = map mkLiteral [ "inputbar" "message" "listview" "mode-switcher" ];
      spacing = mkLiteral "10px";
      padding = mkLiteral "14px";
    };

    "inputbar" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "@fg-col";
      padding = mkLiteral "8px 12px";
      spacing = mkLiteral "8px";
      children = map mkLiteral [ "prompt" "entry" ];
    };

    "prompt" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "@border-col";
      font = "FiraCode Mono Bold 12";
    };

    "entry" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "@fg-col";
      placeholder = "Search...";
      placeholder-color = mkLiteral "@grey";
    };

    "listview" = {
      background-color = mkLiteral "transparent";
      columns = 1;
      lines = 8;
      spacing = mkLiteral "2px";
      cycle = true;
      dynamic = true;
      layout = mkLiteral "vertical";
      children = map mkLiteral [ "element" "scrollbar" ];
      scrollbar = true;
    };

    "element" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "@fg-col";
      padding = mkLiteral "6px 10px";
      spacing = mkLiteral "8px";
      orientation = mkLiteral "horizontal";
    };

    "element-icon" = {
	       background-color = mkLiteral "transparent";	
      size = mkLiteral "28px";
      horizontal-align = mkLiteral "0.5";
      vertical-align = mkLiteral "0.5";
    };

    "element-text" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "inherit";
      vertical-align = mkLiteral "0.5";
      horizontal-align = mkLiteral "0.0";
    };

    "element normal.normal" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "@fg-col";
    };

    "element selected.normal" = {
      background-color = mkLiteral "@selected-col";
      text-color = mkLiteral "@fg-col";
      border = mkLiteral "0px 0px 0px 5px";
      border-color = mkLiteral "@border-col";
    };

    "element urgent.normal" = {
      text-color = mkLiteral "@fg-col";
    };

    "element active.normal" = {
      text-color = mkLiteral "@fg-col";
    };

    "mode-switcher" = {
      spacing = mkLiteral "6px";
      background-color = mkLiteral "transparent";
    };

    "button" = {
      background-color = mkLiteral "transparent";
      text-color = mkLiteral "@fg-col";
      padding = mkLiteral "6px";
      horizontal-align = mkLiteral "0.5";
    };

    "button selected" = {
      background-color = mkLiteral "@selected-col";
      text-color = mkLiteral "@fg-col";
    };

    "message" = {
      background-color = mkLiteral "@bg-col-light";
      padding = mkLiteral "6px 10px";
    };

    "textbox" = {
      text-color = mkLiteral "@fg-col";
    };
    "scrollbar" = {
      background-color = mkLiteral "transparent";
      width = mkLiteral "6px";
      handle-width = mkLiteral "6px";
      handle-color = mkLiteral "@border-col";
      padding = mkLiteral "3px"; 
    };
  };
}
