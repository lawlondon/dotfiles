{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [ 
    lua
    luajit
    luajitPackages.luarocks
    libgcc
    rocmPackages.clang
  ];
}
