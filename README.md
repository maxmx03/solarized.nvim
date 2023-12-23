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

<!--toc:start-->

- [Features](#features)
- [Requirements](#requirements)
- [Install from package manager](#install-from-package-manager)
- [Manual Installation](#manual-installation)
- [Help](#help)
- [Commands](#commands)
- [Default Config](#default-config)
- [Config Themes](#config-themes)
- [Config Styles](#config-styles)
- [Config Highlights](#config-highlights)
- [Config Colors](#config-colors)
- [Config Enables](#config-enables)
- [Config Autocmd](#config-autocmd)
- [Lualine](#lualine)
- [Barbecue](#barbecue)
- [Api](#api)
  - [Get Colors](#get-colors)
  - [Color utils](#color-utils)
  - [How to get color shades](#how-to-get-color-shades)
  - [How to get color tints](#how-to-get-color-tints)
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

## Help

Use `:h solarized.nvim.txt` to get some help

## Commands

- `:Solarized colors` - Display the Solarized palette in a new buffer
- `:Solarized zen`- Removes highlight colors, emphasizing important code segments.

## Default Config

```lua
vim.o.background = 'dark'

-- default config
require('solarized').setup({
    transparent = false, -- enable transparent background
    palette = 'solarized', -- or selenized
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
      todo = true,
      whichkey = true,
      mini = true,
    },
    highlights = {},
    colors = {},
    theme = 'default', -- or 'neo'
    autocmd = true,
})

vim.cmd.colorscheme = 'solarized' -- or selenized
```

## Config Themes

Solarized offers two themes: the default Solarized theme and Neo.
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
            bg = darken(colors.base03, 100)
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

## Config Autocmd

This option enhances highlighting by enabling Solarized's autocmd feature.

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

You can utilize useful functions to customize your Neovim plugins.

### Get Colors

```lua
local palette = require('solarized.palette')
local colors = palette.get_colors()
```

### Color utils

```lua
local color = require('solarized.utils.colors')

-- Convert a hex color code to RGB
color.hex_to_rgb('#ffffff')

-- Darken a color by a specified percentage
color.darken('#ffffff', 100)

-- Lighten a color by a specified percentage
color.lighten('#000000', 100)

-- Blend two colors with a specified ratio
color.blend('#ffffff', '#000000', 0.15)
```

### How to get color shades

```lua
local darken = require('solarized.utils.colors').darken
local colors = require('solarized.palette').get_colors()
for i = 1, 10, 1 do
  local shade = darken(colors.blue, i * 10)

  print(shade)
end
```

### How to get color tints

```lua
local lighten = require('solarized.utils.colors').lighten

for i = 1, 10, 1 do
  local tints = lighten(colors.blue, i * 10)

  print(tints)
end
```

## Contributing

Thank you for your interest in contributing to this project! To ensure a smooth
collaboration, please follow the guidelines below:

1. **Branching**: Make your changes on the `dev` branch. Avoid making direct
   changes to the `main` branch.
2. **Testing**: Before submitting a pull request, run the `./test.py` script
   to ensure that your changes pass all necessary tests. This step helps maintain
   the quality and stability of the project. Ensure that the following dependencies
   are installed for running tests:

   ```bash
   sudo apt install luarocks
   sudo luarocks install luacheck
   sudo luarocks install vusted
   cargo install stylua
   ```

   ```bash
   ./test.py
   ```

   ```bash
    ok 1 - Color Conversions Convert hex to RGB
    ok 2 - Color Conversions Convert RGB to hex
    ok 3 - Color Conversions Darken the color by percentage
    ok 4 - Color Conversions Lighten the color by percentage
    ok 5 - Color Conversions Blend colors
    ok 6 - Configuration Default configuration
    ok 7 - Configuration Unique configuration table instances
    ok 8 - Configuration Extend default configuration
    ok 9 - Initialization Loads without encountering any errors
    ok 10 - Initialization Background is set to light
    ok 11 - Palette Extend solarized color palette
    ok 12 - Palette Correct any invalid colors when extending the solarized palette
    ok 13 - Setup Customizing Highlight Groups
    ok 14 - Setup Changing Comment Style
    ok 15 - Setup Changing  Function Style
    ok 16 - Setup Customizable Highlight Groups Without Losing Previous Configuration
    ok 17 - Setup Ability to Change the Default Theme
    1..17
    # Success: 17
   ```

3. **Pull Request**: When submitting a pull request, select the `dev` branch
   as the target branch. This ensures that your changes will be merged into the
   `dev` branch for further review and integration.

4. **Provide Details**: Provide a clear and descriptive title and description
   for your pull request, explaining the purpose and scope of your changes.

5. **Review Process**: Wait for the maintainer to review your pull request.
   The maintainers will review your changes before merging.

6. **Final Approval**: Once your changes have been reviewed and approved, the
   project maintainer will handle merging your changes into the `main` branch.

## Designed by

[![Ethan Schoonover](https://github.com/altercation.png?size=100)](https://github.com/altercation)

Ethan Schoonover

## Credits and Reference 🎉

- [onedarkpro](https://github.com/olimorris/onedarkpro.nvim)
- [solarized-vim](https://github.com/altercation/vim-colors-solarized)
- [tokyonight](https://github.com/folke/tokyonight.nvim)

[![Raphael](https://github.com/glepnir.png?size=100)](https://github.com/glepnir)
