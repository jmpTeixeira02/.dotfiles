{ pkgs, ... }:

{
  home.packages = with pkgs; [
    go
    nodejs_24
    typescript
    python314
    python312Packages.pip
  ];

  programs.home-manager.enable = true;
}
