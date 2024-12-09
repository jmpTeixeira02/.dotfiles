curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
nix run home-manager -- switch --flake ./nix/#joao
