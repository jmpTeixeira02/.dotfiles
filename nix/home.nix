{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    gnumake
    bison
    libgcc
    fd
    ripgrep
    btop
    fzf
    bat
    unzip
    eza
    zoxide
    tlrc
  ];

  programs.home-manager.enable = true;
}
