{ config, pkgs, ... }:

{
  home.username = "joao";
  home.homeDirectory = "/home/joao";

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    # Core
    clang-tools
    clang
    libgcc
    gnumake
    bison

    # Terminal QOL
    zoxide
    eza
    bat
    fzf
    tlrc
    fd
    ripgrep
    btop
    lazygit
    lazydocker
    
    gh

    unzip
    xclip
  ];

  imports = [
    ./module/shell.nix
    ./module/nvim.nix
    ./module/tmux.nix
    ./module/langs.nix
    ./module/terminal.nix
  ];

  programs.home-manager.enable = true;
}
