{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    gnumake
    bison
    libgcc
    go
    lazygit
    fd
    fzf
    bat
    unzip
    nodejs_20
    eza
    zoxide
  ];

  home.file = {
    ".config/nvim".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/nvim";
  };

  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userEmail = "joaompt2002@hotmail.com";
      userName = "Joao Teixeira";
    };
  };
}
