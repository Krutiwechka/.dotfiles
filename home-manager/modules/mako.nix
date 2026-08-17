{
  services.mako = {
    enable = true;

    settings = {
      # notifications
      max-history = 10;
      sort = "-time";
      on-button-left = "invoke-default-action";
      on-button-right = "dismiss";
      group-by = "app-name";

      # style
      font = "monospace 11";

      background-color = "#1B1116DD";
      text-color = "#EDECF7FF";
      border-color = "#A64D82DD";

      width = 400;
      height = 200;

      outer-margin = "5,45";
      margin = 5;
      padding = 7;
      border-size = 2;
      border-radius = "0:0:8:0";
      icon-location = "right";

      format = "<span alpha=\"35%\" size=\"8pt\" weight=\"bold\">%a</span>\n<b>%s</b>\n%b";
      default-timeout = 5000;

      "urgency=critical" = {
        border-color = "#A5D6E8FF";
        default-timeout = 0;
      };

      "app-name=\"Telegram Desktop\"" = {
        format = "<b>%s</b>\n%b";
      };
    };
  };
}
