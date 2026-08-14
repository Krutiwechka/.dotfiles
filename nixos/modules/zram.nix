{pkgs, ...}:

{
	zramSwap = {
		enable = true;
		algorithm = "lz4";
		memoryPercent = 100;
		priority = 100;
	};
}
