{ config, pkgs, ...}:

{

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  programs.gamescope.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    lact
    mangohud
    mangojuice
    protonup-qt
    lutris
    heroic
  ];

  systemd.packages = with pkgs; [
    lact
  ];

  systemd.services.lactd.wantedBy = ["multi-user.target"];

}
