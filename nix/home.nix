{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = with pkgs; [

  ];

  home.file = {
    ".config/nvim".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/nvim";
    ".config/tmux".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/tmux";
  };

  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      config.name = "joao";
      config.email = "joaompt2002@hotmail.com";
    };
  };
}
