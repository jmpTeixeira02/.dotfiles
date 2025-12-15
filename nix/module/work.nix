{ pkgs, ... }:

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

    mdbook
    k9s
    buf
  ];

  programs.home-manager.enable = true;
}
