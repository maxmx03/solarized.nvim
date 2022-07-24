## Solarized Colorscheme for Neovim

Designed By [Ethan Schoonover](https://github.com/altercation) <br />
Developed By [Max](https://github.com/maxmx03)

## [Visit The Solarized homepage](https://ethanschoonover.com/solarized/)

## Screenshots

![solarized dark](https://github.com/altercation/solarized/raw/master/img/solarized-vim.png)

## Installation

via [Packer](bdirectory for an example of this. Your README doesn't need to be this elaborate, of course, but should be clear enough that users can get up and running)
```lua
use {
  'maxmx03/solarized.nvim',
  config = function ()
    local solarized = pcall(require, 'solarized')

    solarized:setup()
  end
}
```

via [vim-plug]

```vim
Plug 'maxmx03/solarized.nvim'
```

## How to Config
```lua
local solarized = pcall(require, 'solarized')

local default_config = {
  transparent = false,
  color_mode = 'dark',
}

solarized:setup(default_config)
```
