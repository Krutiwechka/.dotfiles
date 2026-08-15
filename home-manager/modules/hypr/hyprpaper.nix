{config, ...}:
{
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [
         "~/.dotfiles/home-manager/modules/hypr/wallpapers/wallpaper1.png"
      ];

      wallpaper = [
      	{
      		monitor = "";
      		path = "~/.dotfiles/home-manager/modules/hypr/wallpapers/wallpaper1.png";
      	}
      ];
    };
  };
}
