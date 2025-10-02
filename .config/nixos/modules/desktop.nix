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

  services.desktopManager.plasma6.enable = true; #enable KDE;

  #NIRI
  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    mako
    nautilus
    kdePackages.polkit-kde-agent-1
    xwayland-satellite
    fuzzel
  ];

  xdg.portal = {
	  enable = true;
	  wlr.enable = true;
	  extraPortals = [
	     pkgs.xdg-desktop-portal-wlr
	     pkgs.xdg-desktop-portal-gtk
	     pkgs.xdg-desktop-portal-gnome
	  ];
      };

  services.gnome.gnome-keyring.enable = true;
  security.polkit.enable = true;

  programs.xwayland.enable = true;

}
