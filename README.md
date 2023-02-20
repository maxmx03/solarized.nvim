# Solarized Dark and Light Themes for Neovim

Solarized is a color palette created by Ethan Schoonover in 2011, which is designed to reduce eye strain and enhance readability. 
It is a carefully crafted set of colors that can be used for both light and dark backgrounds, and is popular among developers and designers.

## Solarized Color Palette

This is a reference table of the Solarized color palette, a carefully designed color scheme created by Ethan Schoonover.

| Solarized Dark | Description                   | Color                | Solarized Light  | Description                    | Color                 |
|----------------|-------------------------------|----------------------|------------------|--------------------------------|-----------------------|
| Base03         | Background                    | #002b36              | Base3            | Background                     | #fdf6e3               |
| Base02         | Background highlights         | #073642              | Base2            | Background highlights          | #eee8d5               |
| Base01         | Comments, secondary text      | #586e75              | Base1            | Comments, secondary text       | #93a1a1               |
| Base00         | General text (body)           | #657b83              | Base0            | General text (body)            | #839496               |
| Base0          | General text (body)           | #839496              | Base00           | General text (body)            | #657b83               |
| Base1          | Comments, secondary text      | #93a1a1              | Base01           | Comments, secondary text       | #586e75               |
| Base2          | Background highlights         | #eee8d5              | Base02           | Background highlights          | #073642               |
| Base3          | Background                    | #fdf6e3              | Base03           | Background                     | #002b36               |
| Yellow         | N/A                           | #b58900              | Yellow           | N/A                            | #b58900               |
| Orange         | N/A                           | #cb4b16              | Orange           | N/A                            | #cb4b16               |
| Red            | N/A                           | #dc322f              | Red              | N/A                            | #dc322f               |
| Magenta        | N/A                           | #d33682              | Magenta          | N/A                            | #d33682               |
| Violet         | N/A                           | #6c71c4              | Violet           | N/A                            | #6c71c4               |
| Blue           | N/A                           | #268bd2              | Blue             | N/A                            | #268bd2               |
| Cyan           | N/A                           | #2aa198              | Cyan             | N/A                            | #2aa198               |
| Green          | N/A                           | #859900              | Green            | N/A                            | #859900               |

## Why use Solarized.nvim?

Solarized is a highly customizable color scheme for Neovim that offers both dark and light modes. With Solarized, you can choose the perfect color scheme for your coding needs, whether you prefer a light or dark background.

Some of the key features of Solarized include:

- Customizable: You can easily adjust the colors to your liking, giving you the perfect color scheme for your coding style.

- Dark and Light: Solarized offers both dark and light modes, so you can choose the background that works best for you.

- Continuously Improved: We are always working to improve Solarized, so you can be confident that you are using a high-quality color scheme that is optimized for Neovim.

Whether you're a seasoned developer or just getting started with Neovim, Solarized is the perfect color scheme for your coding needs. Give it a try today and see the difference for yourself!

## Requirements 🛠️

Before using Solarized Colorscheme, please ensure that you have the following requirements installed:

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

## Installation

To use the Solarized color scheme in your code editor or terminal, 
you can install the Solarized colorscheme plugin using the Packer plugin manager. 
Packer is a popular plugin manager for Neovim and Vim, and it allows you to easily install and manage plugins for your editor.

To install the Solarized colorscheme plugin via Packer, you can follow the steps below.

`~/.config/nvim/lua/plugins.lua`
```lua
use {
  'maxmx03/solarized.nvim',
  config = function ()
    local success, solarized = pcall(require, 'solarized')

    vim.o.background = 'dark'

    solarized.setup {
      theme = 'neovim',
      transparent = false
    }

    vim.cmd 'colorscheme solarized'
  end
}
```

## Switching between Dark and Light Mode

By default, the Solarized color scheme is set to use the dark mode variant. However, if you prefer a lighter background, you can easily switch to the light mode variant.
To switch to the light mode variant, you can add the following line to your Neovim or Vim configuration file:

`vim.o.background = 'light'`

This will set the background color to a light gray color, allowing you to use the Solarized light mode color palette.
If you prefer the dark mode variant, you can set the background color to a darker color by adding the following line to your configuration file instead:

`vim.o.background = 'dark'`


## Configuration Options

The Solarized color scheme provides several configuration options that you can use to customize the look and feel of the colors. Here is a list of the available options and their default values:

| Option       | Default            | Description                                                |
| ------------ | ------------------ | ---------------------------------------------------------- |
| `theme`      | `'vim'`            | The theme comes in three styles: `vim`, `neovim`, `vscode` |
| `transparent`| `false`            | Enable and disable background transparency                 |
| `colors`     | `{}` or `function` | You can add new colors or override the defaults            |
| `highlights` | `{}` or `function` | You can add new highlights or override the defaults        |


## Theme

The theme option allows you to choose between the three available theme styles: vim, neovim, and vscode. The vim theme uses a slightly different color palette than the neovim and vscode themes. By default, the neovim theme is used. To change the theme, add the following line to your Neovim or Vim configuration file:

```lua
solarized.setup {
  theme = 'vim' -- or 'neovim' or 'vscode'
}
```

## Transparent

The transparent option allows you to enable or disable background transparency. By default, transparency is disabled. To enable transparency, add the following line to your Neovim or Vim configuration file:

```lua
solarized.setup {
  transparent = true
}
```

## Colors

The colors option allows you to add new colors or override the default color palette. This option accepts a table or a function that returns a table. The table should contain color definitions using hexadecimal RGB values. By default, this option is set to an empty table. Here is an example of how to set the colors option to a table:
 
```lua
require("solarized").setup({
  colors = {
    bg      = "#282a36",
    bg_alt  = "#44475a",
    comment = "#6272a4",
    fg      = "#f8f8f2",
    content = "#f8f8f2",
    yellow  = "#f1fa8c",
    orange  = "#ffb86c",
    red     = "#ff5555",
    magenta = "#ff79c6",
    violet  = "#bd93f9",
    blue    = "#6272a4",
    cyan    = "#8be9fd",
    green   = "#50fa7b",

  }
})
```
In this example, we're using the Dracula color scheme by setting the colors table to a list of color values that match the Dracula color palette. You can replace these values with your own custom colors if you prefer.

## Highlights

The highlights option allows you to add new highlight groups or override the default highlight groups. This option accepts a table or a function that returns a table. The table should contain highlight group definitions that use the color names defined in the colors table. By default, this option is set to an empty table. Here is an example of how to set the highlights option to a table:

```lua
solarized.setup {
  colors = {
    bg      = "#282a36",
    bg_alt  = "#44475a",
    comment = "#6272a4",
    fg      = "#f8f8f2",
    content = "#f8f8f2",
    yellow  = "#f1fa8c",
    orange  = "#ffb86c",
    red     = "#ff5555",
    magenta = "#ff79c6",
    violet  = "#bd93f9",
    blue    = "#6272a4",
    cyan    = "#8be9fd",
    green   = "#50fa7b",
  },
  highlights = function(colors, darken, lighten, blend)
    return {
      Normal       = { fg = colors.fg, bg = colors.bg },
      Comment      = { fg = colors.comment, bg = darken(colors.bg, 10), italic = true },
      Constant     = { fg = colors.cyan },
      Identifier   = { fg = colors.green },
      Statement    = { fg = colors.yellow },
      PreProc      = { fg = colors.orange },
      Type         = { fg = colors.red },
      Special      = { fg = colors.magenta },
      Visual       = { bg = blend(colors.magenta, colors.bg, 1.25) },
    }
  end
}
```
Here's a brief explanation of the `darken`, `lighten`, and `blend` functions that you can use in your Lua code:

- `darken(color, amount)`: Returns a darker version of the input `color` by reducing the value (i.e., brightness) component of the color by `amount` (a value between 0 and 1). For example, `darken('#FF0000', 0.5)` would return a darker shade of red.

- `lighten(color, amount)`: Returns a lighter version of the input `color` by increasing the value (i.e., brightness) component of the color by `amount` (a value between 0 and 1). For example, `lighten('#FF0000', 0.5)` would return a lighter shade of red.

- `blend(color, blend_color, amount)`: Returns a blended version of the input `color` and `blend_color`, where `amount` specifies the strength of the blend (a value between 0 and 1). A value of 0 would result in the original `color`, and a value of 1 would result in `blend_color`. For example, `blend('#FF0000', '#00FF00', 0.5)` would result in a blend of red and green, which is yellow.

These functions can be useful for generating variations of a given color, or for creating more complex color schemes by blending multiple colors together. The `blend` function in particular can be used to simulate a "glow" effect by blending a color with a brighter version of itself.

## 🚀 Supported Plugins

The Solarized colorscheme supports the following plugins:

- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lsp](https://github.com/neovim/nvim-lspconfig)
- [lspsaga](https://github.com/glepnir/lspsaga.nvim)
- [cmpkind](https://github.com/hrsh7th/nvim-cmp)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [lir](https://github.com/tamago324/lir.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [dashboard](https://github.com/glepnir/dashboard-nvim)
- [hop](https://github.com/phaazon/hop.nvim)
- [twilight](https://github.com/folke/twilight.nvim)
- [navic](https://github.com/SmiteshP/nvim-navic)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)

## 🤝 Contribute

Contributions to the Solarized colorscheme are always welcome! If you have any bug reports, feature requests, or pull requests, feel free to submit them to the [GitHub repository](https://github.com/your-username/solarized-nvim).
To contribute, follow these steps:

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes and commit them
4. Push your changes to your fork
5. Submit a pull request to the main repository

When submitting your pull request, please provide a detailed description of your changes, including the motivation and any related issues or pull requests.
Thank you for your contributions and helping make the Solarized colorscheme better!

The Solarized color palette was created by Ethan Schoonover. For more information, please visit https://ethanschoonover.com/solarized/.
