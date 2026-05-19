oh-my-posh init fish -c /home/$USER/.poshthemes/catppuccin_macchiato.omp.json | source

set -gx XDG_DATA_DIRS "$XDG_DATA_DIRS:-/usr/local/share:/usr/share"
set -gx XDG_DATA_DIRS "$XDG_DATA_DIRS:/var/lib/flatpak/exports/share"

neofetch

if status is-interactive
    # Commands to run in interactive sessions can go here

end


# Created by `pipx` on 2026-04-11 09:12:41
set PATH $PATH /home/$USER/.local/bin
