{ config, pkgs, ... }:

{


  home.packages = with pkgs; [
    zsh
    antigen
    starship
  ];

  home.file = {
    ".zshrc".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/zshrc";
    ".config/zsh".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh";
    ".config/starship".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/starship";
  };

  programs.home-manager.enable = true;

}
