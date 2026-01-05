{ pkgs, ... }:

{

  home.packages = with pkgs; [
    gnumake

    go
    typescript
    nodejs
    k3d
    kubectl
    kubernetes-helm
    postgresql_17
    graphviz

    docker
    docker-compose

    mdbook
    k9s
    buf
  ];

  programs.home-manager.enable = true;
}
