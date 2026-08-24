{ config, pkgs, ... }:
{
	home.stateVersion = "25.11";
	home.username = "francois";
	home.homeDirectory = "/home/francois";
	programs.home-manager.enable = true;

	nixpkgs.config = {
		allowUnfree = true;
	};

	nix = {
		package = pkgs.nix;
		settings.experimental-features = [ "nix-command" "flakes" ];
	};

	xdg = {
		enable = true;
		mime.enable = true;
	};

	home.packages = with pkgs; [
		fortune
		xclip
		btop

		#development packages
		git
		yadm
		nushell
		tmux
		lazygit
		lazydocker
		k9s
		direnv
		yazi
		gh
		mise
		
		#emacs
		emacs

		#rust
		rustup

		# neovim packages
		neovim
		tree-sitter
		go
		luarocks
		lua
		ruby_4_0
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
