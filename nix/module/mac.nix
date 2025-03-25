{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    colima
    apple-sdk
  ];

  programs.home-manager.enable = true;
}
