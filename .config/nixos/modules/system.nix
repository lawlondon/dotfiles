{ config, pkgs, ...}:

{

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.edk2-uefi-shell.enable = true; #Enables shell in boot
  boot.loader.systemd-boot.windows = {
    "11-pro" = {
      title = "Windows 11";
      efiDeviceHandle = "HD1h65535a1";
      sortKey = "z_windows";
    };
  };

  # Use Latest Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  #Swap on zram
  zramSwap.enable = true;

  # Graphics Drivers
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [ rocmPackages.clr.icd ];
  };

  hardware.amdgpu.opencl.enable = true;
  hardware.amdgpu.overdrive.enable = true;

  services.xserver.videoDrivers = [ "amdgpu" ];

  # Networking
  networking.hostName = "london";
  networking.networkmanager.enable = true;

    # Time & Locales
  time.timeZone = "Australia/Perth";
  i18n.defaultLocale = "en_AU.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_AU.UTF-8";
    LC_IDENTIFICATION = "en_AU.UTF-8";
    LC_MEASUREMENT = "en_AU.UTF-8";
    LC_MONETARY = "en_AU.UTF-8";
    LC_NAME = "en_AU.UTF-8";
    LC_NUMERIC = "en_AU.UTF-8";
    LC_PAPER = "en_AU.UTF-8";
    LC_TELEPHONE = "en_AU.UTF-8";
    LC_TIME = "en_AU.UTF-8";
  };

   # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable CUPS (Printing)
  services.printing.enable = true;

}

