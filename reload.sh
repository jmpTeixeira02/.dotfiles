nix run home-manager -- switch --flake ./nix/#joao
sudo chsh -s $(which zsh)
sudo usermod -s $(which zsh) $USER
