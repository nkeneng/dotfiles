{
  description = "Steven's Nix flake (macOS + NixOS)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, homebrew-core, homebrew-cask, ... }:
  let
    commonModules = [ ./modules/common.nix ];
  in {
    nixosConfigurations."nixos-host" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit self; };
      modules = commonModules ++ [
        ./modules/nixos.nix
        ./hosts/nixos-host/default.nix
      ];
    };

    darwinConfigurations."StevywanderPro" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      specialArgs = { inherit self; };
      modules = commonModules ++ [
        ./modules/darwin.nix
        ./hosts/StevywanderPro/default.nix
        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            user = "stevennkeneng";
            taps = {
              "homebrew/homebrew-core" = homebrew-core;
              "homebrew/homebrew-cask" = homebrew-cask;
            };
            mutableTaps = false;
          };
        }
        ({ config, ... }: {
          homebrew.taps = builtins.attrNames config.nix-homebrew.taps;
        })
      ];
    };

    packages.x86_64-linux.default = self.nixosConfigurations."nixos-host".config.system.build.toplevel;
    packages.aarch64-darwin.default = self.darwinConfigurations."StevywanderPro".system;
  };
}
