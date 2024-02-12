# oxocharcoal.nvim

Shameless fork of oxycarbon with color changes to be more consistent across languages I work with

## Features

- Support for popular plugins, such as Lsp, Treesitter, and Semantic Highlighting
- Fast and Featureful. Supports all the highlights you'll ever need without making a dent on startuptime
- Uses `Termguicolors` but its compatible with 16-color terminals as well

### Plugin support

The colorscheme explicitly adds highlights for the following plugins:

- Vim Diagnostics
- Vim LSP
- Nvim-Treesitter
- Telescope
- Nvim-Notify
- Nvim-Cmp
- NvimTree
- Neogit
- Gitsigns
- Hydra

And many others should "just work!" If you have a plugin that needs explicit highlights, feel free to open an issue or PR and I would be happy to add them.  

## Install

The colorscheme requires the latest stable or nightly neovim (> `v0.7.0`)

### Packer.nvim

```lua
use {'nyoom-engineering/oxocharcoal.nvim'}
```
### Lazy.nvim
```lua
return { 
  "nyoom-engineering/oxocharcoal.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
}, 
```
### Usage

For neovim nightly users:

```lua
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxocharcoal"
```

For neovim stable users:

```lua
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocharcoal")
```

You can also add a transparent background by adding the following lines after `colorscheme`:
```lua
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
```

## Development

You must install [hotpot](https://github.com/rktjmp/hotpot.nvim), since is what is used for compiling the fennel code.

### Workflow

* Fork the project
* Make changes in the files under `fnl/`
* Compile your changes by running `:Fnlfile make.fnl`
* Make a PR

## License

The project is licensed under the MIT license
