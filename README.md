# Dotfiles

This is my personal dotfiles repo.

## Structure
- `nvim/.config/nvim/` my Neovim configuration.
- `zsh/` my zsh configuration.
- `tmux/.tmux.conf` my Tmux configuration.
- `ghostty/.config/ghostty` my Ghostty configuration.
- `kanata/kanta.kbd` my home row mods using kanata.
- `scripts/` my own scripts for automation.

## Installation
```zsh 
git clone https://github.com/QLight-dev/dotfiles.git
cd dotfiles
stow <package-name>
```

> [!EXAMPLE]
> To symlink Neovim:
> ```zsh
> stow nvim
> ```
