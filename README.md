# Setup

## Get neovim: 

- Install the dependencies:

```
sudo apt-get install ninja-build gettext cmake unzip curl
```
- Clone the source code:

```
git clone https://github.com/neovim/neovim
```

- Build

```
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
```

- Install

```
sudo make install
```

## Get packer:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Sync plugins:

Start `neovim` and run `:PackerSync`. Restart neovim to load the plugins.

## Install `ripgrep`

Telescope's `live-grep` requires `ripgrep`:

```
sudo apt-get install ripgrep
```

## LSP config

- Clangd:

```
sudo apt-get install clangd
```

- Rust-Analyzer:

https://rust-analyzer.github.io/manual.html#installation
