{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/system.nix
      ./modules/autoupgrade.nix
      ./modules/users.nix
      ./modules/desktop.nix
      ./modules/fonts.nix
      ./modules/gaming.nix
      ./modules/packages.nix
      ./modules/shell.nix
      ./modules/programming.nix
      ./modules/configuration.nix
    ];

  system.stateVersion = "25.05"; # Don't ever touch this option. Defines the intial version Nix was installed at.
}

