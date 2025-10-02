{ config, pkgs, ...}:

{

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    corefonts
    liberation_ttf
  ];
 
  fonts.fontconfig.antialias = true;
  fonts.fontconfig.subpixel.rgba = "rgb";

}
