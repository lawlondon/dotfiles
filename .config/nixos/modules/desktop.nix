{ config, pkgs, ...}:

{

  hardware.bluetooth.enable = true; #for bluetooth in kde

  services.xserver.enable = true;

  services.xserver.xkb = { #keyboard layout x11
    layout = "us";
    variant = "";
  };

  services.displayManager.sddm.enable = true; #sddm
  services.displayManager.sddm.wayland.enable = true; #enable wayland support sddm
  services.displayManager.sddm.settings.General.DisplayServer = "wayland"; #default to wayland session

  # services.desktopManager.plasma6.enable = true; #enable KDE;

  programs.hyprland = {
	  enable = true;
      };

  environment.systemPackages = with pkgs; [
  kdePackages.dolphin
  mako
  kdePackages.qtwayland
  libsForQt5.qt5.qtwayland
  hyprpaper
  hyprcursor
  fuzzel
  ];

}
