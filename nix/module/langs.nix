{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    go
    nodejs_20
    typescript
    python314
    python312Packages.pip
    elixir_1_16
  ];

  programs.home-manager.enable = true;
}
