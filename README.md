<div align="center">
  <img src="https://user-images.githubusercontent.com/50273941/220346427-b9feee05-490d-442f-bae2-42822fe69ad5.svg" alt="solarized-yinyang" width="350" />
  <h1>Solarized</h1>

![Neovim](https://img.shields.io/badge/Neovim-v0.9.1+-blue?NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![LICENSE](https://shields.io/badge/LICENSE-MIT-orange?style=for-the-badge)

</div>

Solarized is a sixteen color palette (eight monotones, eight accent colors)
designed for use with terminal and gui applications.
[click here to learn more](https://ethanschoonover.com/solarized/)

![solarized](https://github.com/maxmx03/solarized.nvim/assets/50273941/3c2ffda7-9efb-46f4-ad82-7dfd257dda39)

## Features

- Support for Treesitter
- Support for Semantic highlight
- Customizability: styles, colors and highlights can all be modified
- Plugin compatibility
- Provides users with the option to enable or disable highlight groups

## Requirements

Before using the Solarized Colorscheme, please make sure you have the following
requirements installed:

- `Neovim v0.9.1+`
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Install from package manager

Download using your preferred package manager.

[lazy](https://github.com/folke/lazy.nvim)

```lua
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'dark' -- or 'light'

      vim.cmd.colorscheme 'solarized'
    end,
  },
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
    'maxmx03/solarized.nvim',
    config = function()
      vim.o.background = 'dark' -- or 'light'

      vim.cmd.colorscheme 'solarized'
    end
}
```

## Manual Installation

To manually install Solarized, follow these steps:

1. Download the stable release of Solarized.
2. Extract the contents of the release.
3. Locate the following folders in the extracted files: `after`, `colors`,
   `lua`, `plugin`.
4. Copy these folders to the `~/.config/nvim` directory.

## Default Config

```lua
vim.o.background = 'dark'

-- default config
require('solarized').setup({
    transparent = false, -- enable transparent background
    styles = {
      comments = {},
      functions = {},
      variables = {},
      numbers = {},
      constants = {},
      parameters = {},
      keywords = {},
      types = {},
    },
    enables = {
      bufferline = true,
      cmp = true,
      diagnostic = true,
      editor = true,
      indentblankline = true,
      lsp = true,
      lspsaga = true,
      navic = true,
      semantic = true,
      syntax = true,
      telescope = true,
      tree = true,
      treesitter = true,
    },
    highlights = {},
    colors = {},
    theme = 'default', -- or 'neosolarized' or 'neo' for short
})

vim.cmd.colorscheme = 'solarized'
```

## Styles

The `styles` config allows you to customize the style of a highlight
group.

```lua
require('solarized').setup({
    styles = {
      comments = { italic = true, bold = false },
      functions = { italic = true },
      variables = { italic = false },
    }
})
```

## Highlights

The `highlights` config allows you to customize the highlights groups.

example:

```lua
require('solarized').setup {
    highlights = function (colors)
        return {
            LineNr = { fg = c.base1, bg = c.base02 },
            CursorLineNr = { bg = c.base02 },
            CursorLine = { bg = c.base02 },
            Function = { italic = false },
            Visual = { bg = c.cyan },
            CmpKindBorder = { fg = c.base01, bg = c.base04 }
        }
    end
}
```

## Colors

The `colors` config allows you to extend or modify the color palette used by
solarized.

example:

```lua
require('solarized').setup {
    colors = function(colors, colorhelper)
        local darken = colorhelper.darken
        local lighten = colorhelper.lighten
        local blend = colorhelper.blend

        return {
            fg = '#fff', -- output: #ffffff
            bg = darken(colors.base03, 10)
        }
    end,
    highlights = function(colors)
        return {
            Normal = { fg = colors.fg, bg = colors.bg }
        }
    end
}
```

## Enables

The enables config allows you to enable or disable solarized support for
spefic plugins or neovim's default highlights

example:

```lua
require('solarized').setup {
  enables = {
      editor = true,
      syntax = true,

      -- PLUGINS
      bufferline = true,
      cmp = false, -- disabled
      diagnostic = true,
      indentblankline = true,
      lsp = true,
      lspsaga = false, -- disabled
      navic = true,
      semantic = true,
      telescope = true,
      tree = false, -- disabled
      treesitter = true,
    },
    highlights = {
        -- your implementation of nvim-tree
        -- your implementation of cmp
        -- your implementation of lspsaga
    }
}
```

## Commands

`:SolarizedColors` - Display the Solarized palette in a new buffer

## Designed by

[![Ethan Schoonover](https://github.com/altercation.png?size=100)](https://github.com/altercation)

Ethan Schoonover
