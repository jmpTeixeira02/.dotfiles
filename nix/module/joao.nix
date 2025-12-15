{}:

{
  programs = {
    git = {
      enable = true;
      userEmail = "joaompt2002@hotmail.com";
      userName = "Joao Teixeira";
      extraConfig = {
        pull.rebase = "false";
      };
    };
  };

  programs.home-manager.enable = true;
}
