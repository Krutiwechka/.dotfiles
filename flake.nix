{
	description = "My system configuration";

  	inputs = {
    	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    	home-manager = {
    		url = "github:nix-community/home-manager";
    		inputs.nixpkgs.follows = "nixpkgs";
    	};
    	zen-browser = {
    		url = "github:youwen5/zen-browser-flake";
        	inputs.nixpkgs.follows = "nixpkgs";
    	};
};

  	outputs = {self, nixpkgs, home-manager, ...}@inputs: {
    	let 
    		system = "x86_64-linux";
		in {
			nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
				inherit system;
				specialArgs = { inherit inputs; };
				modules = [./nixos/configuration.nix];
			};
			homeConfigurations.timojj = home-manager.lib.homeManagerConfiguration {
				pkgs = nixpkgs.legacyPackages.${system};
				modules = [./home-manager/home.nix];
				extraSpecialArgs = { inherit inputs; };
			};				
		};
  	};
}
