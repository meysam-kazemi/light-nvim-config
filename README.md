# Light Neovim Config

![Neovim](https://img.shields.io/badge/Neovim-0.10%2B-57A143?logo=neovim&logoColor=white)
![Python](https://img.shields.io/badge/Python-Ready-blue?logo=python)

## Requirements

- Neovim 0.10 or newer (`nvim --version`)
- Git and Make
- A clipboard provider on Linux: `wl-clipboard` on Wayland or `xclip`/`xsel` on X11

## Installation

Install Neovim 0.10+ with your system package manager. If your package manager
has an older version, Linux x86_64 can use the official archive without `sudo`:

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

Run `:checkhealth` if clipboard access or a plugin does not work. macOS uses its
built-in clipboard tools; Linux needs one of the providers listed above.

## Key Cheatsheet

| Key | Description |
| :--- | :--- |
| `Space e` | Toggle left file tree |
| `gcc` / `gc` | Toggle comment on the current line / visual selection |
| `y` / `"y` | Copy to the unnamed register |
| `"+y` | Copy explicitly to the system clipboard |
| `"+p` | Paste from the system clipboard |
| `Space s` | Toggle spell check |
| `gt` / `gT` | Next / previous buffer |
| `Ctrl-q` | Close the current buffer |
