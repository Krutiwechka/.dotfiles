{
  wayland.windowManager.hyprland.settings = {
    window_rule = [
      {
        name = "float";
        match.class = "thunar";
      }
      {
        name = "size 1000 800";
        match.class = "thunar";
      }
      {
        name = "center";
        match.class = "thunar";
      }
      {
        name = "suppressevent maximize";
        match.class = ".*";
      }
      {
        name = "nofocus";
        match = {
          class = "^$";
          title = "^$";
          xwayland = 1;
          float = 1;
          fullscreen = 0;
          pin = 0;
        };
      }
    ];
  };
}
