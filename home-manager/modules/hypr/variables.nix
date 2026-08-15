#############################
### ENVIRONMENT VARIABLES ###
#############################

{
  wayland.windowManager.hyprland.settings.env = [
    { _args = [ "XDG_CURRENT_DESKTOP" "Hyprland" ]; }
    { _args = [ "XDG_SESSION_TYPE" "wayland" ]; }
    { _args = [ "XDG_SESSION_DESKTOP" "Hyprland" ]; }

    { _args = [ "NIXOS_OZONE_WL" "1" ]; }
    { _args = [ "ELECTRON_ENABLE_WAYLAND" "1" ]; }

    { _args = [ "QT_QPA_PLATFORM" "wayland;xcb" ]; }
    { _args = [ "QT_AUTO_SCREEN_SCALE_FACTOR" "1" ]; }
    { _args = [ "QT_WAYLAND_DISABLE_WINDOWDECORATION" "1" ]; }

    { _args = [ "GTK_THEME" "Sweet-dark" ]; }
  ];
}
