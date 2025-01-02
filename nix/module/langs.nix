{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    go
    nodejs_20
    typescript
    python314
    python312Packages.pip
    elixir
  ];

  programs.home-manager.enable = true;
}
