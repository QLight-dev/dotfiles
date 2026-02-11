# Dotfiles

This is my personal dotfiles repo. It has only what i need and nothing more.

## NAQIAA (Never Asked Questions I'm Answering Anyway)
### why don't you have 500 plugins for each config, 200 aliases, and support for every programming language in earth?
- I won't ever be coding, just configuring.
- That would make neovim load in like 3 seconds and the terminal load in like 5 seconds with all that.
- the amount of lsps and treesitter parsers and debuggers i'd have to install probably double the size of my dotfiles and make lsp-config.lua, treesitter.lua, and debugger.lua have 500 lines each. Making adding a slight change take like 10 minutes.
- I'd get like 1000 lines of config for neovim, so again, making tweaking something take some time.

## Structure
- `nvim/.config/nvim/` my Neovim configuration.
- `zsh/` my zsh configuration.
- `tmux/.tmux.conf` my Tmux configuration.
- `ghostty/.config/ghostty/` my Ghostty configuration.
- `kanata/kanata.kbd` my home row mods using kanata.
- `scripts/.local/bin/` my own scripts for automation.

## Installation
```zsh 
git clone https://github.com/QLight-dev/dotfiles.git
cd dotfiles
stow <package-name>
```
