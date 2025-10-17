{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    clang
  ];


  programs.home-manager.enable = true;
}
