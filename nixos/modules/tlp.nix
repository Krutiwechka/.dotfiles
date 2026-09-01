{
	services.tlp = {
		enable = true;
		settings = {
			TLP_PROFILE_AC = "PRF";
			TLP_PROFILE_BAT = "SAV";
			TLP_AUTO_SWITCH = 2;

			CPU_SCALING_GOVERNOR_ON_AC = "performance";
			CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
			CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
			CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

			RUNTIME_PM_ON_AC = "on";
			RUNTIME_PM_ON_BAT = "auto";

			RADEON_DPM_STATE_ON_AC = "performance";
			RADEON_DPM_STATE_ON_BAT = "battery";
			RADEON_DPM_PERF_LEVEL_ON_AC = "auto";
			RADEON_DPM_PERF_LEVEL_ON_BAT = "auto";
		};
	};
}
