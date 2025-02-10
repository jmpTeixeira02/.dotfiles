export FLAKE_USER=$(whoami)
export FLAKE_HOME=$(echo $HOME)
export NIXPKGS_ALLOW_BROKEN=1
nix run home-manager -- switch --flake ./nix/#sap --impure
