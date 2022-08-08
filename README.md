# Solarized Colorscheme for Neovim

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
  mode = 'dark', -- dark(default)/light
  theme = 'vim', -- vim(default)/neovim/vscode
  transparent = false, -- false(default)/true
}

solarized.setup(default_config)

vim.cmd 'colorscheme solarized'
```

## Configuration
| option | default | description |
| ------ | ----------- | -------- |
| mode | `'dark'` | Solarized comes with two mode `dark` and `light` |
| theme | `'vim'` | The theme comes in three styles, `vim`, `neovim`, `vscode` |
| transparent | `false` | enable and disable background transparency |
| colors | `{}` or `function` | You can add new colors or override the default |
| highlights | `{}` or `function` | You can add new highlights or override the default |

## Customization

add or override colors
```lua
local solarized = require 'solarized'

local function colors(solarized_colors)

  return {
    white = solarized_colors.fg,
    black = solarized_colors.bg,
    purple = '#2A0944',
  }
end

solarized.setup {
  colors = colors
}
```

add or override highlights

```lua
local solarized = require 'solarized'

local function highlights(solarized_colors)
  return {
    CmpItemKindKeyword = { fg = solarized_colors.orange },
    CmpItemKindFunction = { fg = solarized_colors.cyan },
    CmpItemKindMethod = { fg = solarized_colors.magenta },
  } 
end

solarized.setup {
  highlights = highlights
}
```
