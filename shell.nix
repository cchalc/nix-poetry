{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell  {
  buildInputs = with pkgs; [
    ( python38.withPackages (ps: with ps; [ pip flake8 black pynvim ipython python-language-server.override { pylint = null; } ]) )
    poetry
  ];
}
