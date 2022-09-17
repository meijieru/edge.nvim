# Edge colorscheme for neovim

Lua port of [edge](https://github.com/sainnhe/edge) colorscheme with some [tweaks](#Tweaks).

## Prerequisites

- Neovim 0.6+ with `termguicolors` set
- [lush.nvim](https://github.com/rktjmp/lush.nvim)

## Install

Using packer

```lua
use {
  "meijieru/edge.nvim",
  requires = { "rktjmp/lush.nvim" },
}
```

## Tweaks

- tweak: remove deprecated `LspDiagnostics*`
- tweak: plugin: theHamsta/nvim-dap-virtual-text
- tweak: plugin: MTDL9/vim-log-highlighting
- tweak: plugin: stevearc/aerial.nvim
- tweak: plugin: simrat39/symbols-outline.nvim
- tweak: plugin: ray-x/lsp_signature.nvim
- tweak: nvimtree bold opened folder
- tweak: variable no red
- tweak: deprecated 256 support

## NOTE

- Opt changed by it
  - `termguicolors = true`.

## TODO

- More controls over the behavior with a setup
