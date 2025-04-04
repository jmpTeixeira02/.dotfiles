{ config, pkgs, ... }:

{
  home.username = builtins.getEnv "FLAKE_USER";
  home.homeDirectory = builtins.getEnv "FLAKE_HOME";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    clang
    gnumake

    go
    nodejs_20
    typescript
    k3d
    kubectl
    kubernetes-helm
    postgresql_17

    docker
    docker-compose
    colima

    mdbook

    # Apple Specific
    colima
    apple-sdk
  ];

  programs.home-manager.enable = true;
}
