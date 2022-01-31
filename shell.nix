{ pkgs ? import <nixpkgs> {} }:

with import <nixpkgs> {};
let pythonEnv = python38.withPackages (ps: with ps; [
  flake8
  black
  pynvim
  ipython
  python-language-server.override { pylint = null; }
  pip
  poetry
  ]);

in
pkgs.mkShell  {
  buildInputs = with pkgs; [
    pythonEnv
  ];
}
