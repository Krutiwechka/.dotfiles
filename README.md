# ❄️ Nixfiles
## My hyprland-based NixOS setup
---
## Stack

OS: NixOS  
WM: Hyprland   
Status bar: Waybar  
Launcher:	Rofi  
Terminal:	Kitty  
Shell prompt:	Starship  
Notifications:	mako  
File manager:	Thunar  

---
## Structure
```
./  
├── home-manager/  
│    ├── modules/  
│    ├── home.nix  
│    └── pkgs.nix  
├── nixos/  
│    ├── modules/  
│    ├── configuration.nix  
│    ├── disko.nix  
│    └── hardware-configuration.nix  
├── flake.lock  
└── flake.nix  
```
