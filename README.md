# Dotfiles

This is my personal dotfiles repo. It has only what I need and nothing more.

## Structure
- `nvim/.config/nvim/` my Neovim configuration.
- `zsh/` my zsh configuration.
- `tmux/.tmux.conf` my Tmux configuration.
- `ghostty/.config/ghostty/` my Ghostty configuration.
- `starship/.config/starship` my Starship configuration for aesthetics.
- `kanata/kanata.kbd` my home row mods using kanata.
- `scripts/.local/bin/` my own scripts for automation.

## Installation
> [!NOTE]
> Requires GNU Stow and git.
```zsh 
git clone https://github.com/QLight-dev/dotfiles.git
cd dotfiles
stow <package-name>
```
