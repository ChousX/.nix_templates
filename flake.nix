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
        rust-bevy = {
          description = "Rust and Bevy";
          path = ./bevy;
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
