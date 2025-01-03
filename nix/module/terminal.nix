
{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty
  ];

  home.file = {
    ".config/ghostty".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/ghostty";
  };

  programs.home-manager.enable = true;
}
