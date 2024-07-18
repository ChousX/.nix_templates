{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  description = "My Templates! (Based on Grayson's flake templates)";
  outputs = { self, nixpkgs }:
    let
      pkgs = (import nixpkgs) {
        system = "x86_64-linux";
      };
    in
    {
      templates = {
        rust-cargo2nix = {
          description = "Rust project with cargo2nix";
          path = ./cargo2nix;
        };

        bevy-app = {
          description = "Rust and Bevy";
          path = ./bevy/app;
        };

        bevy-web = {
          description = "Bevy with web";
          path = ./bevy/web;
        };

        bevy-plugin = {
          description = "Bevy Plugin";
          path = ./bevy/plugin;
        };

        rust-naersk = {
          description = "Rust Naersk";
          path = ./naersk;
        };

        rust-naersk-nightly = {
          description = "Rust Naersk Nightly";
          path = ./naersk-nightly;
        };

      };
      devShell = {
        x86_64-linux = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            nixpkgs-fmt
          ];
        };
      };
    };
}
