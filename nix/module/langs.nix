{ pkgs, ... }:

{
  home.packages = with pkgs; [
    go
    typescript
    nodejs
    python3
  ];

  programs.home-manager.enable = true;
}
