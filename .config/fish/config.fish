fish_config prompt choose arrow
fish_config theme choose catppuccin-frappe
set -g fish_greeting
fish_vi_key_bindings

function n
	nvim .
end

function lg
	lazygit
end

function ld
	lazydocker
end
