# Solarized Colorscheme for Neovim

## [Visit The Solarized homepage](https://ethanschoonover.com/solarized/)

## Screenshots

![solarized dark](https://github.com/maxmx03/milianor-dotfiles/blob/main/docs/solarized-dark.png)
![solarized light](https://github.com/maxmx03/milianor-dotfiles/blob/main/docs/solarized-light.png)

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

| option      | default            | description                                                |
| ----------- | ------------------ | ---------------------------------------------------------- |
| mode        | `'dark'`           | Solarized comes with two mode `dark` and `light`           |
| theme       | `'vim'`            | The theme comes in three styles, `vim`, `neovim`, `vscode` |
| transparent | `false`            | enable and disable background transparency                 |
| colors      | `{}` or `function` | You can add new colors or override the default             |
| highlights  | `{}` or `function` | You can add new highlights or override the default         |

## Customization

```lua
local solarized = require 'solarized'

solarized.setup {
  transparent = true,
  theme = 'vim',
  mode = 'dark',
  colors = function (c)
    local colors = {
      fg = c.cyan, -- override the default foreground color
      indigo = '#4B0082', -- new color
    }

    return colors
  end,
  highlights = function(colors)
    local highlights = {
      CmpItemKindTabnine = { fg = colors.magenta },
      CmpItemKindEmoji = { fg = colors.yellow },
      LineNr = { bg = solarized:is_transparent(colors.bg_alt) }, -- bg_alt if solarized is not transparent
      CursorLineNr = { fg = colors.indigo }, -- new color being used
    }

    return highlights
  end,
}

vim.cmd 'colorscheme solarized'
```
### Customization - Darken Function

Darken hex colors

```lua
local solarized = require 'solarized'

solarized.setup {
  transparent = true,
  theme = 'vim',
  mode = 'dark',
  highlights = function(colors, darken)
    return {
      DiagnosticVirtualTextError = { fg = colors.danger, bg = darken(colors.danger) },
      DiagnosticVirtualTextWarn = { fg = colors.warning, bg = darken(colors.warning) },
      DiagnosticVirtualTextInfo = { fg = colors.info, bg = darken(colors.info) },
      DiagnosticVirtualTextHint = { fg = colors.hint, bg = darken(colors.hint) },
    }
  end,
}

vim.cmd 'colorscheme solarized'
```

### Customization - Blend Function

Blend hex colors, based on [colorblender.py](https://github.com/ChristianChiarulli/colorblender)

```lua
local solarized = require 'solarized'

solarized.setup {
  transparent = false,
  theme = 'vim',
  mode = 'dark',
  highlights = function(colors, _, blend)
    local background = colors.bg
    local alpha = 0.15

    return {
      Statement = { fg = colors.green, bg = blend(colors.green, background, alpha) },
      PreProc = { fg = colors.orange, bg = blend(colors.orange, background, alpha) },
      Type = { fg = colors.yellow, bg = blend(colors.yellow, background, alpha) },
      Special = { fg = colors.red, bg = blend(colors.red, background, alpha) },
    }
  end,
}

vim.cmd 'colorscheme solarized'
```

## [Lualine](https://github.com/nvim-lualine/lualine.nvim)

```lua
local success, lualine = pcall(require, 'lualine')

if not success then
  return
end

lualine.setup {
  options = {
    theme = 'solarized'
  }
}
```

## Other works

[FluoroMachine](https://github.com/maxmx03/FluoroMachine.nvim)

