{config, ...}:
{
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [
        "../wallpapers/wallpaper1.png"
      ];

      wallpaper = [
        "../wallpapers/wallpaper1.png"
      ];
    };
  };
}
