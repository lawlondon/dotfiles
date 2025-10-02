{ config, pkgs, lib, ...}:

let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of Nixvim.
    # ref = "nixos-25.05";
  });
in
{
  imports = [
    # For NixOS
    nixvim.nixosModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    #theme Monokai Pro
    colorschemes.monokai-pro = {
	enable = true;
	settings = {
	    filter = "octagon";
	    devicons = true; };
	};
   
   #syntax highlighting
  plugins.treesitter = {
      enable = true;
      autoLoad = true;
      settings = {
	auto_install = true;
	highlight.enable = true;
      };
    };

    #devicons (needed because monokai pro has devicons
    plugins.web-devicons.enable = true;

    #breadcrumbs (file path at top of screen)
    plugins.dropbar.enable = true;

    #provides a map for commenting lines and blocks
    plugins.comment.enable = true;

    #lsp
    lsp.servers = {
      nixd.enable = true;
      lua_ls.enable = true;
    };

    plugins.lspconfig.enable = true;
    plugins.lsp-format.enable = true;
    plugins.lspkind.enable = true;

    #status bar
    plugins.lualine.enable = true;

    #auto bracket pairs
    plugins.mini-pairs.enable = true;

    #completions
    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings.sources = [
    { name = "nvim_lsp"; }
    { name = "path"; }
    { name = "buffer"; }
    { name = "cmdline"; }
  ];
    };

    plugins.cmp-cmdline.enable = true;

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      cursorline = true;
      scrolloff = 10;
      breakindent = true;
      list = true;
      termguicolors = true;
      mouse = "a";
      clipboard = "unnamedplus";
      smoothscroll = true;
      smartindent = true;
      wrap = false;
      smartcase = true;
      ignorecase = true;
    };


};

}
