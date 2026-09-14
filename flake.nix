{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = inputs: {
    packages = builtins.mapAttrs (system: pkgs: {
      default = pkgs.callPackage ./default.nix { };
    }) inputs.nixpkgs.legacyPackages;
  };
}
