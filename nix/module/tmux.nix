{
  pkgs,
  ...
}:

let
  kanagawa = pkgs.tmuxPlugins.mkTmuxPlugin {
    pluginName = "kanagawa";
    version = "stable-2024-09-12";
    src = pkgs.fetchFromGitHub {
      owner = "Nybkox";
      repo = "tmux-kanagawa";
      rev = "master";
      sha256 = "sFL9/PMdPJxN7tgpc4YbUHW4PkCXlKmY7a7gi7PLcn8=";
    };
  };
in
{

  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    baseIndex = 1;
    keyMode = "vi";
    mouse = true;
    clock24 = true;

    plugins = with pkgs.tmuxPlugins; [
      {
        plugin = kanagawa;
        extraConfig = ''
          set -g @kanagawa-plugins "ssh-session  time"
          set -g @kanagawa-show-timezone false
          set -g @kanagawa-theme dragon
          set -g @kanagawa-day-month true
          set -g @kanagawa-show-powerline true
          set -g @kanagawa-military-time true
          set -g @kanagawa-show-left-icon session
          # set -g @kanagawa-time-colors "cyan gray"
          set -g @kanagawa-time-format " %R"
          set -g @kanagawa-ignore-window-colors true
        '';
      }
      yank
      vim-tmux-navigator
      tmux-thumbs
      better-mouse-mode
      tmux-fzf
      sensible
      resurrect
      continuum
    ];

    extraConfig = ''
      set-option -g status-position top
      set -g detatch-on-destroy off

      bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded tmux config"

      unbind %
      bind | split-window -h

      unbind '"'
      bind - split-window -v

      set -g @resurrect-capture-pane-contents 'on' # allow tmux-ressurect to capture pane contents
      set -g @continuum-restore 'on' # enable tmux-continuum functionality

      set -g default-command "zsh"
    '';
  };

  programs.home-manager.enable = true;
}
