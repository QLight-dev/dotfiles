FROM ubuntu:24.04

RUN apt-get update && apt-get install -y git curl stow unzip && rm -rf /var/lib/apt/lists/*

# Download latest Neovim stable AppImage and make it executable
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && \
    chmod u+x nvim.appimage && \
    mv nvim.appimage /usr/local/bin/nvim

WORKDIR /root
