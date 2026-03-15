FROM ubuntu:24.04

# Install essentials
RUN apt-get update && apt-get install -y git curl stow unzip && rm -rf /var/lib/apt/lists/*

# Download and install latest Neovim AppImage
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage && \
    chmod u+x nvim-linux-x86_64.appimage && \
    mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

WORKDIR /root
