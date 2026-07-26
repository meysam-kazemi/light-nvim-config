# Light Neovim Config

![Neovim](https://img.shields.io/badge/Neovim-0.10%2B-57A143?logo=neovim&logoColor=white)
![Python](https://img.shields.io/badge/Python-Ready-blue?logo=python)

## Requirements

- Neovim 0.10 or newer
- Git and Make
- `wl-clipboard` on Wayland or `xclip`/`xsel` on X11 for system clipboard access

## Installation

Install Neovim on Linux x86_64 without `sudo`:

```bash
mkdir -p ~/.local/bin ~/.local/opt
curl -fLO https://github.com/neovim/neovim-releases/releases/download/stable/nvim-linux-x86_64.tar.gz
tar -xzf nvim-linux-x86_64.tar.gz -C ~/.local/opt
ln -sf ~/.local/opt/nvim-linux-x86_64/bin/nvim ~/.local/bin/nvim
export PATH="$HOME/.local/bin:$PATH"
```

Then install the config:

```bash
git clone https://github.com/meysam-kazemi/light-nvim-config.git ~/.config/nvim
nvim
```

Lazy installs the plugins automatically on first start.

## Key Cheatsheet

| Key | Description |
| :--- | :--- |
| `Space e` | Toggle left file tree |
| `cmm` | Toggle comment on the current line or visual selection |
| `"+y` | Copy to the system clipboard |
| `"+p` | Paste from the system clipboard |
| `Space s` | Toggle spell check |
| `gt` / `gT` | Next / previous buffer |
| `Ctrl-q` | Close the current buffer |
