{config, pkgs, ...}:

{
  users.users.london = {
    isNormalUser = true;
    description = "London";
    extraGroups = [ "networkmanager" "wheel" "gamemode" ];
  };
  
}
