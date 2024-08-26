<div align="center">
  <img src="https://user-images.githubusercontent.com/50273941/220346427-b9feee05-490d-442f-bae2-42822fe69ad5.svg" alt="solarized-yinyang" width="350" />
  <h1>Solarized</h1>

![Neovim](https://img.shields.io/badge/Neovim-v0.9.1+-blue?NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![LICENSE](https://shields.io/badge/LICENSE-MIT-orange?style=for-the-badge)

</div>

Solarized is a sixteen color palette (eight monotones, eight accent colors)
designed for use with terminal and gui applications.
[click here to learn more](https://ethanschoonover.com/solarized/)

![Solarized](https://github.com/user-attachments/assets/b5002482-6f61-4856-be1d-5e07f2462b6e)

<!--toc:start-->

- [Features](#features)
- [Requirements](#requirements)
- [Install from package manager](#install-from-package-manager)
- [Solarized's Annotations](#solarizeds-annotations)
  - [Using `lspconfig`](#using-lspconfig)
  - [Using `.luarc.json`](#using-luarcjson)
- [Manual Installation](#manual-installation)
- [Docs](#docs)
- [Commands](#commands)
- [Default Config](#default-config)
- [Config Styles](#config-styles)
- [Config Highlights](#config-highlights)
- [Config Colors](#config-colors)
- [Config Plugins](#config-plugins)
- [Lualine](#lualine)
- [Barbecue](#barbecue)
- [Api](#api)
  - [Get Colors](#get-colors)
  - [Color utils](#color-utils)
- [Contributing](#contributing)
- [Designed by](#designed-by)
- [Credits and Reference 🎉](#credits-and-reference-🎉)
<!--toc:end-->

## Features

- Support for Treesitter
- Support for Semantic highlight
- Customizability: styles, colors and highlights can all be modified
- Plugin compatibility
- Provides users with the option to enable or disable highlight groups
- Selenized color palette

## Requirements

Before using the Solarized Colorscheme, please make sure you have the following
requirements installed:

- `Neovim v0.9.1+`
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Install from package manager

Download using your preferred package manager.

[lazy](https://github.com/folke/lazy.nvim)

```lua
return {
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {},
  config = function(_, opts)
    vim.o.termguicolors = true
    vim.o.background = 'light'
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized'
  end,
}
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
    'maxmx03/solarized.nvim',
    config = function()
      vim.o.background = 'dark'
      ---@type solarized
      local solarized = require('solarized')
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      solarized.setup({})
      vim.cmd.colorscheme 'solarized'
    end
}
```

## Solarized's Annotations

### Using `lspconfig`

```lua
  local lsp_config = require 'lspconfig'
  lsp_config.lua_ls.setup {
    settings = {
      Lua = {
        hint = {
          enable = true,
        },
        runtime = {
          version = 'LuaJIT',
        },
        workspace = {
          checkThirdParty = true,
          library = {
            vim.env.VIMRUNTIME,
            '~/.local/share/nvim/lazy/solarized.nvim',
          },
        },
      },
    },
  }
```

### Using `.luarc.json`

```json
{
  "workspace.library": ["/path/to/nvim/runtime", "/path/to/solarized.nvim"]
}
```

## Manual Installation

To manually install Solarized, follow these steps:

1. Download the stable release of Solarized.
2. Extract the contents of the release.
3. Locate the following folders in the extracted files: `after`, `colors`,
   `lua`, `plugin`.
4. Copy these folders to the `~/.config/nvim` directory.

## Docs

Use `:h solarized.nvim.txt` to see docs

## Commands

- `:Solarized colors` - Display the Solarized palette in a new buffer

## Default Config

```lua
vim.o.background = 'dark'

-- default config
require('solarized').setup({
  transparent = false, -- false | true
  on_highlights = nil,
  on_colors = nil,
  palette = 'solarized', -- solarized (default) | selenized
  styles = {
    types = {},
    functions = {},
    parameters = {},
    comments = {},
    strings = {},
    keywords = {},
    variables = {},
    constants = {},
  },
  plugins = {
    treesitter = true,
    lspconfig = true,
    navic = true,
    cmp = true,
    indentblankline = true,
    neotree = true,
    nvimtree = true,
    whichkey = true,
    dashboard = true,
    gitsigns = true,
    telescope = true,
    noice = true,
    hop = true,
    ministatusline = true,
    minitabline = true,
    ministarter = true,
    minicursorword = true,
    notify = true,
    rainbowdelimiters = true,
    bufferline = true,
    lazy = true,
    rendermarkdown = true,
  },
})

vim.cmd.colorscheme = 'solarized'
```

## Config Styles

The `styles` config allows you to customize the style of a highlight
group.

```lua
---@type solarized.styles
local styles = {
      comments = { italic = true, bold = false },
      functions = { italic = true },
      variables = { italic = false },
}
require('solarized').setup({
    styles = styles,
})
```

## Config Highlights

The `highlights` config allows you to customize the highlights groups.

example:

```lua
require('solarized').setup {
    on_highlights = function (colors, color)
        local darken = color.darken
        local lighten = color.lighten
        local blend = color.blend
        local shade = color.shade
        local tint = color.tint

        ---@type solarized.highlights
        local groups = {
            Visual = { bg = colors.base02, standout = true },
            Function = { fg = colors.yellow },
            IncSearch = { fg = colors.orange, bg = colors.mix_orange },
            Search = { fg = colors.violet, bg = shade(colors.violet, 5),
            NormalFloat = { bg = darken(colors.base03, 25) }
        }

       return groups
    end
}
```

## Config Colors

The `colors` config allows you to extend or modify the color palette used by
solarized.

> [!TIP]
> Use `:Solarized colors` to see available colors.

example:

```lua
require('solarized').setup {
    on_colors = function(colors, color)
        local lighten = color.tint
        local darken = color.darken

        return {
            fg = lighten(colors.base00, 2),
            bg = darken(colors.base03, 30)
        }
    end,
    highlights = function(colors)
        return {
            Normal = { fg = colors.fg, bg = colors.bg }
        }
    end
}
```

## Config Plugins

The plugins config allows you to enable or disable solarized support for
spefic plugins or neovim's default highlights

example:

```lua
return {
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  ---@type solarized.config
  opts = {
    plugins = {
        navic = false,
        nvimtree = false,
        dashboard = false,
        noice = false,
        ministatusline = false,
        minitabline = false,
        ministarter = false,
        rainbowdelimiters = false,
    }
  },
  config = function(_, opts)
    require('solarized').setup(opts)
    vim.cmd.colorscheme 'solarized'
  end,
}
```

## Lualine

```lua
require('lualine').setup {
  options = {
    theme = 'solarized',
    -- theme = 'selenized',
    disabled_filetypes = {
        'NvimTree',
    },
  },
}
```

Alternatively, to utilize Lualine's Solarized theme:

```lua
require('lualine').setup {
    options = {
      theme = require('lualine.themes.solarized')
    }
}
```

To use the Solarized theme showcased in the screenshot for Lualine [click here](https://github.com/maxmx03/solarized.nvim/discussions/50)

## Barbecue

```lua
require('barbecue').setup {
  theme = 'solarized',
}
```

## Api

### Get Colors

```lua
---@type solarized.palette
local colors = {}

if vim.o.background == 'dark' then
   highlights = require 'solarized.highlights'
   local palette = require 'solarized.palette'
   colors = palette['solarized']
else
   highlights = require 'solarized.highlights.solarized-light'
   local palette = require 'solarized.palette.solarized-light'
   colors = palette['selenized']
end
```

### Color utils

```lua
local color = require('solarized.utils.colors')

-- Convert a hex color code to RGB
color.hex_to_rgb('#ffffff')

-- Darken a color by a specified percentage
color.darken('#ffffff', 100)
color.shade('#ffffff', 10)

-- Lighten a color by a specified percentage
color.lighten('#000000', 100)
color.tint('#000000', 10)

-- Blend two colors with a specified ratio
color.blend('#ffffff', '#000000', 0.15)
```

## Contributing

Pull requests are welcome and appreciated.

## Designed by

[![Ethan Schoonover](https://github.com/altercation.png?size=100)](https://github.com/altercation)

Ethan Schoonover

## Credits and Reference 🎉

- [solarized-vim](https://github.com/altercation/vim-colors-solarized)
