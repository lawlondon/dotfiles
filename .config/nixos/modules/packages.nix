{config, pkgs, ...}:

{

  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  programs.git.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    google-chrome
    qbittorrent
    gh #github cli
    blender-hip
    obsidian
    audacity
    obs-studio
    discord
    spotify
    lf
    vlc
    btop-rocm
    superfile
  ];

}
