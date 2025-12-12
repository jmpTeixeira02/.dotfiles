{ config, pkgs, lib, ... }:

{
  options = {
    colima = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Use colima test container fix";
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
        ".config/zsh/colima.zsh" = lib.mkIf config.colima {
            source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/zsh/colima.zsh";
        };
        ".config/starship".source =
            config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/starship";
    };

    programs.home-manager.enable = true;
  };
}
