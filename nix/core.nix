{ config, pkgs, lib, ... }:

{
  options = {
    colima = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Include colima specific fixes";
    };
    terminal = lib.mkOption {
        type = lib.types.str;
        default = "ghostty";
        description = "Terminal emulator";
    };
    macOS = lib.mkOption {
        type = lib.types.bool;
        default = pkgs.stdenv.isDarwin;
        description = "Include macos specific fixes";
    };
  };

  config = {
    home = {
      username = builtins.getEnv "FLAKE_USER";
      homeDirectory = builtins.getEnv "FLAKE_HOME";
      stateVersion = "24.11";
      packages = with pkgs; [
        # Utils
        gnumake
        bison
        nh
        # Core tools
        zsh
        antigen
        starship
        zoxide
        eza
        bat
        fzf
        tlrc
        fd
        ripgrep
        btop
        lazygit
        sesh
        unzip
        xclip
        # IDE
        neovim
        tree-sitter
        # Docker
        docker
        docker-compose
        kubernetes-helm
        lazydocker
        kubectl
        k3d
        k9s
        opentofu
        # Git
        gh
        gnupg # Sign commits
      ]
      ++ lib.optionals config.colima [
        colima
      ]
      ++ lib.optionals (!config.macOS) [
        clang
      ];
      file = {
        ".config/nvim".source =
          config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/nvim";
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
        ".config/ghostty" = lib.mkIf (config.terminal == "ghostty") {
            source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/ghostty";
        };
      };
    };

    programs.home-manager.enable = true;
  };
}
