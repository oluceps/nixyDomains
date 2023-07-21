{
  description = "nixy domains";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
      ];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
        packages.default = with pkgs; stdenv.mkDerivation {
          name = "cn-domains";
          src = ./.;
        };
      };
    };
}
