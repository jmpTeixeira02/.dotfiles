{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    gnumake
    bison
    libgcc
    fd
    fzf
    bat
    unzip
    eza
    zoxide
  ];

  programs.home-manager.enable = true;
}
