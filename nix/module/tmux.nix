{ config, pkgs, ... }:

# let
#   tmux-kanagawa = {
#     pluginName = "tmux-kanagawa";
#     src = pkgs.fetchFromGitHub {
#       owner = "Nybkox";
#       repo = "tmux-kanagawa";
#       rev = "master";
#       sha256 = "0d2db8d95e1b74643a06802043c7000a79ba0a0a";
#     };
#   };
# in
{
  home.packages = with pkgs; [
    tmux
    tmuxPlugins.vim-tmux-navigator
    tmuxPlugins.sensible
    tmuxPlugins.continuum
    # tmux-kanagawa
  ];

  home.file = {
    ".config/tmux".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/tmux";
  };

  programs.home-manager.enable = true;
}
