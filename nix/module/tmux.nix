{ config, pkgs, ... }:

let
  tmux-kanagawa = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "tmux-kanagawa";
    version = "stable-2024-09-12";
    src = pkgs.fetchFromGitHub {
      owner = "Nybkox";
      repo = "tmux-kanagawa";
      rev = "master";
      sha256 = "sha256-9S4HQHuECGLPLdPishmwEO0twdeQ6mZQfIMNFFDkgQ8=";
    };
  };
in
{
  home.packages = with pkgs; [
    tmux
    tmuxPlugins.vim-tmux-navigator
    tmuxPlugins.sensible
    tmuxPlugins.continuum
    tmux-kanagawa
  ];

  home.file = {
    ".config/tmux.conf".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/tmux/tmux.conf";
  };

  programs.home-manager.enable = true;
}
