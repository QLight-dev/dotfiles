# Dotfiles

This is my personal dotfiles repo. It has only what i need and nothing more.

## NAQIAA (Never Asked Questions I'm Answering Anyway)
### why don't you have 500 plugins for each config, 200 aliases, and support for every programming language in earth?
- I won't ever be coding, just configuring.
- That would make Neovim load in like 3 seconds and the terminal load in like 5 seconds with all that.
- the amount of lsps and treesitter parsers and debuggers i'd have to install probably double the size of my dotfiles and make lsp-config.lua, treesitter.lua, and debugger.lua have 500 lines each. Making adding a slight change take like 10 minutes.
- I'd get like 1000 lines of config for Neovim, so again, making tweaking something take some time.
### Why don't you use vanilla vim, bash, and deal with having to lose your finger trying to use the control key?
- Vanilla vim is not enough to code more than a `print("Hello, World!")`.
- Bash sucks... Zsh all the way.
- Without home row mods, i wouldn't be able to code for more than like 4 hours.
### Why don't you use VSCode?
- Steals my data.
- Uses mouse no matter what you try
- not in terminal.
- Intellisense is slow.
### You care about minimilsm, why use `smear-cursor.nvim`?
- Good question, when i first switched from VSCode to Neovim I missed the smooth caret animation, got it back though.

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
