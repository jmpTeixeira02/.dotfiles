{ config, pkgs, lib, ... }:

{
  options = {
    colima = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Use colima test container fix";
    };
    macOS = lib.mkOption {
        type = lib.types.bool;
        default = pkgs.stdenv.isDarwin;
        description = "Include macos specific fixes";
    };
  };

  config = {
    home.packages = with pkgs; [
        zsh
        antigen
        starship
    ];

    home.file = {
        ".zshrc".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/zshrc";
        ".config/zsh/aliases.zsh".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/aliases.zsh";
        ".config/zsh/tmux-sesh.zsh".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/tmux-sesh.zsh";
        ".config/zsh/plugins.zsh".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/plugins.zsh";
        ".config/zsh/fzf.zsh".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/fzf.zsh";
        ".config/zsh/macos.zsh" = lib.mkIf config.macOS {
            source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/macos.zsh";
        };
        ".config/starship".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/starship";
        ".config/zsh/colima.zsh" = lib.mkIf config.colima {
            source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/colima.zsh";
        };
    };

    programs.home-manager.enable = true;
  };
}
