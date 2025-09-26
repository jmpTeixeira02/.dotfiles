{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    go
    nodejs_24
    typescript
    python314
    python312Packages.pip
    elixir
    cargo
  ];

  programs.home-manager.enable = true;
}
