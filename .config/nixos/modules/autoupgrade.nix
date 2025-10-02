{config, pkgs, ...}:

{
  system.autoUpgrade = {
    enable = true;
    allowReboot = true;
    channel = "https://channels.nixos.org/nixos-unstable";
    dates = "02:00";
    persistent = true;
  };
}
