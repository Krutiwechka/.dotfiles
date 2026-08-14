#nixos system configuration
{ config, lib, pkgs, ... }:

{
	imports =
	[
		./hardware-configuration.nix  #hardware
		./disko.nix  #disks
		./modules/audio.nix
		./modules/hyprland.nix
		./modules/user.nix
		./modules/zram.nix
	];

	# EFI boot params
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	# ryzen brightness fix
	# boot.kernelParams = [ "acpi_backlight=video" ];

	# hostname
	networking.hostName = "nixos";

	# configure network connections interactively with nmcli or nmtui
	networking.networkmanager.enable = true;

	# time zone
	time.timeZone = "Europe/Minsk";

	# enable flakes
	nix.settings.experimental-features = ["flakes" "nix-command"];

	
	# system pkgs
	environment.systemPackages = with pkgs; [
	   curl
	   zsh
	];

### SERVICES
	#CUPS
	services.printing.enable = true;

		#services.flatpak.enable = true;  

	# GNOME virtual file system
	services.gvfs.enable = true;

	# file prewiew
	services.tumbler.enable = true;

	# thunar
	programs.thunar.enable = true;

	# sddm
	services.displayManager = {
	   sddm = {
	      enable = true;
	      wayland.enable = true;
	   };
	};
	
	programs.zsh.enable = true;
	
##############################################
system.stateVersion = "26.05"; #don't touch :D
##############################################
}

