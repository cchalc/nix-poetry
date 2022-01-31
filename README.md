# nix-poetry
Experimentation on building python apps with poetry2nix

- [useful poetry2nix snippets](https://pythonrepo.com/repo/nix-community-poetry2nix)

poetry config --list 

```
cache-dir = ".cache/pypoetry"
experimental.new-installer = true
installer.parallel = true
virtualenvs.create = true
virtualenvs.in-project = true
virtualenvs.path = "{cache-dir}/virtualenvs"  # .cache/pypoetry/virtualenvs
```

### my old shell.nix
```
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
```
