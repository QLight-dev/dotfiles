FROM ubuntu:24.04

# Essentials
RUN apt-get update && apt-get install -y git curl stow unzip && rm -rf /var/lib/apt/lists/*

# Download latest stable Neovim tarball
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz && \
    tar xzf nvim-linux-x86_64.tar.gz && \
    mv nvim-linux-x86_64 /usr/local/nvim && \
    ln -s /usr/local/nvim/bin/nvim /usr/local/bin/nvim

# stylua
curl -L https://github.com/JohnnyMorganz/StyLua/releases/latest/download/stylua-linux.zip -o stylua.zip
unzip stylua.zip -d stylua
sudo mv stylua/stylua /usr/local/bin/
chmod +x /usr/local/bin/stylua

WORKDIR /root
