{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> { inherit system; }
, fenix }:
pkgs.mkShell {
  packages.x86_64-linux.default = fenix.packages.x86_64-linux.minimal.toolchain;
  pkgs.overlays = [ fenix.overlays.default ];
  buildInputs = [
    (fenix.fromToolchainFile {
      dir = ./.;
    })
  ];
}
