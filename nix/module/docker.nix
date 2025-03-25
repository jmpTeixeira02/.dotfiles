{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    docker
    docker-compose
  ];

  programs.home-manager.enable = true;
}
