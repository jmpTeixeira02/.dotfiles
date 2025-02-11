{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    docker
    docker-compose
    colima
  ];

  programs.home-manager.enable = true;
}
