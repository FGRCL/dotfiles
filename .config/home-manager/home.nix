{ config, pkgs, ... }:
{
	home.stateVersion = "25.11";
	home.username = "francois";
	home.homeDirectory = "/home/francois";
	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		fortune
		htop

		#apps
		firefox

		#development packages
		yadm
		nushell
		tmux
		lazygit
		lazydocker
		k9s
		direnv

		# neovim packages
		neovim
		tree-sitter
		go
		luarocks
		lua
		ruby
		php
		php85Packages.composer
		nodejs_24
		jdk25_headless
		julia
		cmake-language-server
		nginx-language-server
		python313
		wget
	];
}
