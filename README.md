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

## Get some help

Use `:h solarized.nvim.txt` to get some help

## Commands

`:SolarizedColors` - Display the Solarized palette in a new buffer

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
      dashboard = true,
      editor = true,
      gitsign = true,
      hop = true,
      indentblankline = true,
      lsp = true,
      lspsaga = true,
      navic = true,
      neogit = true,
      neotree = true,
      notify = true,
      semantic = true,
      syntax = true,
      telescope = true,
      tree = true,
      treesitter = true,
      whichkey = true,
      mini = true,
    },
    highlights = {},
    colors = {},
    theme = 'default', -- or 'neosolarized' or 'neo' for short
})

vim.cmd.colorscheme = 'solarized'
```

## Config Themes

Solarized offers two themes: the default Solarized theme and Neosolarized.
These themes provide different visual styles to enhance your experience.

```lua
require('solarized').setup({
    theme = 'neo' -- or comment to use solarized default theme.
})
```

## Config Styles

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

## Config Highlights

The `highlights` config allows you to customize the highlights groups.

example:

```lua
require('solarized').setup {
    highlights = function (colors, colorhelper)
        local darken = colorhelper.darken
        local lighten = colorhelper.lighten
        local blend = colorhelper.blend

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

## Config Colors

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

## Config Enables

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

## Lualine

```lua
require('lualine').setup {
  options = {
    theme = 'solarized',
    disabled_filetypes = {
        'NvimTree',
    },
  },
}
```

## Api

You can utilize useful functions to customize your Neovim plugins.

### Get Colors

```lua
local solarized_palette = require('solarized.palette')
local colors = solarized_palette.get_colors()
```

### Colorhelper

```lua
local colorhelper = require('solarized.utils.colors')

-- Convert a hex color code to RGB
colorhelper.hex_to_rgb('#ffffff')

-- Convert RGB values to HSL
colorhelper.rgb_to_hsl(255, 255, 255)

-- Convert HSL values to RGB
colorhelper.hsl_to_rgb(0, 0, 100)

-- Darken a color by a specified percentage
colorhelper.darken('#ffffff', 100)

-- Lighten a color by a specified percentage
colorhelper.lighten('#000000', 100)

-- Blend two colors with a specified ratio
colorhelper.blend('#ffffff', '#000000', 0.15)
```

## Contributing

Thank you for your interest in contributing to this project!
To ensure a smooth collaboration, please follow the guidelines below:

1. Open a discussion to propose and discuss the changes you
   intend to make. This step allows for valuable input and
   feedback from the project maintainers and the community.
2. Ensure you have the latest changes from the `dev` branch by pulling the
   latest updates.
3. Make your changes on the `dev` branch. Avoid making direct changes to
   the `main` branch.
4. Before submitting a pull request, run the `./test.py` script to ensure that
   your changes pass all the necessary tests. This step helps maintain the
   quality and stability of the project.
5. When submitting a pull request, make sure to select the `dev`
   branch as the target branch. This ensures that your changes will be merged
   into the `dev` branch for further review and integration.
6. Provide a clear and descriptive title and description for your pull request,
   explaining the purpose and scope of your changes.
7. Wait for the maintainer to review your pull request.
8. Once your changes have been reviewed and approved, the project maintainer
   will handle merging your changes into the `main` branch.

## Designed by

[![Ethan Schoonover](https://github.com/altercation.png?size=100)](https://github.com/altercation)

Ethan Schoonover

## Credits and Reference 🎉

[![Raphael](https://github.com/glepnir.png?size=100)](https://github.com/glepnir)

Raphael

- [onedarkpro](https://github.com/olimorris/onedarkpro.nvim)
- [solarized-vim](https://github.com/altercation/vim-colors-solarized)
