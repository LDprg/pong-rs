{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> { inherit system; }
}:
pkgs.mkShell {
  nixpkgs.overlays = [ fenix.overlays.default ];
  nativeBuildInputs = with pkgs; [
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
      "rustfmt"
    ])
    rust-analyzer-nightly
  ];
}
