#!/bin/sh
set -e

echo "Starting nix installation"
curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh -s -- --daemon
source "${HOME}/.bashrc"

echo "Starting home-managed installation"
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install


echo "Installing dotfiles and packages"
nix-shell --packages yadm --run "yadm clone -f git@github.com:FGRCL/dotfiles.git"
source "${HOME}/.bashrc"
home-manager switch --extra-experimental-features nix-command --extra-experimental-features flakes

echo "Installation done!"
