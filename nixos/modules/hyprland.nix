{
	programs.hyprland = {
	   enable = true;
	   withUWSM = true; #app processes are non-hyprland-child
	   xwayland.enable = true; 
	};
	security.pam.services.hyprlock = {}; #hyprlock fix
}
