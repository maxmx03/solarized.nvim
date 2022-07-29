## Solarized Colorscheme for Neovim

Designed By [Ethan Schoonover](https://github.com/altercation) <br />
Developed By [Max](https://github.com/maxmx03)

## [Visit The Solarized homepage](https://ethanschoonover.com/solarized/)

## Screenshots

![solarized dark](https://github.com/altercation/solarized/raw/master/img/solarized-vim.png)

## Themes

### *Vim*
<img src="./docs/style_vim.png" />

### *Neovim*
<img src="./docs/style_neovim.png" />

### *Vscode*
<img src="./docs/style_vscode.png" />


## Installation

via [Packer](https://github.com/wbthomason/packer.nvim)
```lua
use {
  'maxmx03/solarized.nvim',
  config = function ()
    local success, solarized = pcall(require, 'solarized')

    if not success then
      return
    end

    solarized.setup()
  end
}
```

via [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'maxmx03/solarized.nvim'
```
## How to Config

example
```lua
local success, solarized = pcall(require, 'solarized')

if not success then
  return
end

local default_config = {
  mode = 'dark', -- dark/light
  theme = 'vim', -- vim/neovim/vscode
  transparent = false, -- false/true
  style = {
   comments = { italic = true, bold = false },
   keywords = { italic = true, bold = false },
   functions = { italic = false, bold = false },
  },
  -- override colors
  colors = {
    bg_alt = '#333333'
  },
  -- override highlight
  highlights = {
    Normal = { fg = '#fafafa', bg = '#000000' },
    NormalNC = { fg = '#ff8f81', bg = '#333333' },
  },
}

solarized.setup(default_config)

vim.cmd 'colorscheme solarized'
```
