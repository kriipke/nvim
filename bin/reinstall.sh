#!/bin/bash

# Uninstalls LazyVim by removing it's:
#
#  a. CONFIG dir $HOME/.config/nvim) and
#  b. APPDATA dirs $HOME/.local/{share,state,etc}
#
# Atfer, it (1) pull down a fresh starter template
# and (2) initiates a re-download the appadata
# via:  `nvim --headless -c "Lazy! sync" -c "qa"`


# Back up the Configs
mv ~/.config/nvim{,.bak}

# Back up the appdata (if you want)
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# Fetch the original LazyVim starter repo
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Initiate a reinstall of all LazyVim components
nvim --headless -c "Lazy! sync" -c "qa"


