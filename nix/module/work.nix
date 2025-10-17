{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    gnumake

    go
    typescript
    nodejs_24
    k3d
    kubectl
    kubernetes-helm
    postgresql_17

    docker
    docker-compose
    colima

    mdbook
    k9s

    # Apple Specific
    colima
  ];

  programs.home-manager.enable = true;
}
