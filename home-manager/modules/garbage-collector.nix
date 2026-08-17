{pkgs, ...}:
{
	systemd.user.services.hm-gc = {
	  Unit.Description = "Home Manager generations cleanup";
	  Service = {
	    Type = "oneshot";
	    ExecStart = "${pkgs.home-manager}/bin/home-manager expire-generations '-14 days'";
	  };
	};

	systemd.user.timers.hm-gc = {
	  Unit.Description = "Weekly Home Manager cleanup";
	  Timer = {
	    OnCalendar = "weekly";
	    Persistent = true;
	  };
	  Install.WantedBy = [ "timers.target" ];
	};
}
