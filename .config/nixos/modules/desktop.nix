{ config, pkgs, ...}:

{

  hardware.bluetooth.enable = true; #for bluetooth in kde
  services.power-profiles-daemon.enable = true;

  services.xserver.enable = true;

  services.xserver.xkb = { #keyboard layout x11
    layout = "us";
    variant = "";
  };

  services.displayManager.sddm.enable = true; #sddm
  services.displayManager.sddm.wayland.enable = true; #enable wayland support sddm
  services.displayManager.sddm.settings.General.DisplayServer = "wayland"; #default to wayland session

  services.desktopManager.plasma6.enable = true; #enable KDE;

  # programs.hyprland = {
	  # enable = true;
      # };

  # security.polkit = {
	  # enable = true;
      # };

  # xdg.portal = {
	  # enable = true;
	  # extraPortals = [
	    # pkgs.kdePackages.xdg-desktop-portal-kde
	    # pkgs.xdg-desktop-portal-gtk
	    # pkgs.xdg-desktop-portal-hyprland
	  # ];
      # };
  #
  # environment.systemPackages = with pkgs; [
  #   kdePackages.dolphin
  #   kdePackages.ark
  #   kdePackages.gwenview
  #   kdePackages.filelight
  #   kdePackages.breeze
  #   kdePackages.breeze-gtk
  #   kdePackages.breeze-icons
  #   kdePackages.kde-gtk-config
  #   kdePackages.kde-cli-tools
  #   hyprpolkitagent
  #   nwg-look
  #   kdePackages.qt6ct
  #   dunst
  #   kdePackages.qtwayland
  #   libsForQt5.qt5.qtwayland
  #   hyprpaper
  #   hyprcursor
  #   fuzzel
  #   bibata-cursors
  #   waybar
  #   dconf-editor
  # ];
  #
  # programs.dconf.enable = true;
  #
  # systemd.user.services.polkit-kde-authentication-agent-1 = {
	  # description = "polkit-kde-authentication-agent-1";
	  # wantedBy = [ "graphical-session.target" ];
	  # wants = [ "graphical-session.target" ];
	  # after = [ "graphical-session.target" ];
	  # serviceConfig = {
		  # Type = "simple";
		  # ExecStart = "${pkgs.kdePackages.polkit-kde-agent-1}/libexec/polkit-kde-authentication-agent-1";
		  # Restart = "on-failure";
		  # RestartSec = 1;
		  # TimeoutStopSec = 10;
	      # };
      # };

}
