{ config, pkgs, ... }:

{
  home.username = builtins.getEnv "FLAKE_USER";
  home.homeDirectory = builtins.getEnv "FLAKE_HOME";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    gnumake
    bison

    zoxide
    eza
    bat
    fzf
    tlrc
    fd
    ripgrep
    btop
    lazygit
    
    gh
    gnupg

    unzip
    xclip
  ];

  imports = [
    ./module/shell.nix
    ./module/nvim.nix
    ./module/langs.nix
    ./module/docker.nix
    ./module/terminal.nix
  ];

  programs.home-manager.enable = true;
}
