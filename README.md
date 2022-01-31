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
