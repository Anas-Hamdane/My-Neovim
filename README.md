<h1 align="center">
    My Neovim Setup
</h1>

https://github.com/user-attachments/assets/354844c8-7a1a-4f0d-9fe3-49adc8466fc0

## Features

- **Lazy Setup**: Using [Lazy.nvim](https://www.lazyvim.org/installation) with a lot of modification.
- **Amazing Startup Screen**: Using [Alpha.nvim](https://github.com/goolord/alpha-nvim).
- **Auto Save**: Auto save your projects after entering NORMAL mod, Using [auto-save.nvim](https://github.com/okuuva/auto-save.nvim).
- **Catppuccin Coloscheme**: Catppuccin colorscheme with transparent bakground.
- **Terminal Window**: Terminal inside a terminal 🙂.
- **NeoTree AND NvimTree**: Use both of them 🙂.
- **Syntax Highlighting**: Enhanced syntax highlighting for various programming languages.
- **Code Completion**: Code completion for most famous languages.
- **Fuzzy Finding**: Quick file and buffer navigation with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- **Status Line**: Informative and customizable status line using [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).

## Custom Keybindings

Here are some of the custom keybindings in this Neovim setup:


```text
Note : <l> = <leader> = <Space> / <C> = Ctrl / <S> = Shift / <M> = Alt
```

| Keybind | Mode | Description |
|---------|------|-------------|
| `sf`        | Normal | telescope File Browser |
| `\\`        | Normal | Buffers List |
| `<l>ff`     | Normal | Find files |
| `<l>tt`     | Normal | Open Terminal |
| `<l>cg`     | Normal | Copy Compiling Command(add your language if you want) |
| `<l>e`      | Normal | Toggle file explorer(NeoTree) |
| `<C-f>`     | Normal | Toggle file explorer(NvimTree) |
| `<C-i>`     | Normal | Toggle hidden files/folders for NvimTree |
| `<C-left>`  | Normal | Resize Current split |
| `<C-right>` | Normal | Resize Current split |

For other keymaps you can check keymaps.lua or click your leader key to show a small help
