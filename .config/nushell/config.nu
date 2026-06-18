# config.nu
#
# Installed by:
# version = "0.107.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
source direnv.nu

$env.config.buffer_editor = "nvim"
$env.PATH ++= ['~/.cargo/bin']
$env.PATH ++= ['~/.nix-profile/bin']

def "packages edit" [] {
  cd ~/.config/home-manager;
  nvim home.nix;
  home-manager switch;
}

def "packages update" [] {
  cd ~/.config/home-manager;
  nix flake update;
  home-manager switch;
}

def lg [] {
  lazygit
}


def ld [] {
  lazydocker
}

. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
