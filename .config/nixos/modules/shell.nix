{config, pkgs, ...}:

{

  programs.zsh.enable = true;
  users.extraUsers.london = { shell = pkgs.zsh; };

}
