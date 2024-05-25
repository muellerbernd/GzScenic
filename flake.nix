{
  description = "gzscenic on nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    with nixpkgs.lib;
    with flake-utils.lib;
      eachSystem allSystems
      (system: let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [self.overlays.default];
        };
        # scenic =
        #   pkgs.python3Packages.callPackage ./scenic.nix {
        #   };
      in {
        # packages.gzscenic = gzscenic;
        # packages.scenic = scenic;
        packages.default = pkgs.python3Packages.gzscenic;
        devShells = {
          default = import ./nix/shell.nix {inherit pkgs;};
        };
      })
      // {
        overlays.default = import ./overlay.nix;
      };
}
