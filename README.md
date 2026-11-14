# Dotfiles

This is my personal dotfiles repo. It has only what I need and nothing more.

## Structure
- `nvim/.config/nvim/` my Neovim configuration for code editing.
- `zsh/` my zsh configuration.
- `tmux/.tmux.conf` my Tmux configuration for terminal multiplexing.
- `ghostty/.config/ghostty/` my Ghostty configuration for my terminal emulator.
- `starship/.config/starship` my Starship configuration for aesthetics.
- `kanata/kanata.kbd` my keyboard mods using kanata.
- `local/.local/` my local folder.
- `omarchy/.config/omarchy` my Omarchy config.


> [!NOTE]
> Requires GNU Stow and git.
```zsh 
git clone https://github.com/QLight-dev/dotfiles.git
cd dotfiles
stow <package-name>
```
