# Installation

## Automated
```
curl https://raw.githubusercontent.com/FGRCL/dotfiles/refs/heads/master/.install.sh | sh
```

## Manual
1. Install $[nix](https://nix.dev/install-nix.html)
2. Install $[home-manager](https://nix-community.github.io/home-manager/index.xhtml#preface)
3. Clone the dotfiles repository
```
nix-shell --packages yadm --run "yadm clone -f git@github.com:FGRCL/dotfiles.git"
```
4. Install packages with
```
home-manager switch --extra-experimental-features nix-command --extra-experimental-features flakes
```
