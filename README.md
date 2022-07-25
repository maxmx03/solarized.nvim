## Solarized Colorscheme for Neovim

Designed By [Ethan Schoonover](https://github.com/altercation) <br />
Developed By [Max](https://github.com/maxmx03)

## [Visit The Solarized homepage](https://ethanschoonover.com/solarized/)

## Screenshots

![solarized dark](https://github.com/altercation/solarized/raw/master/img/solarized-vim.png)

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

    solarized:setup()
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
  transparent = false, -- true/false
  mode = 'dark', -- light/dark
  style = 'default' -- default/vscode
}

local your_config = {
  mode = 'dark',
  style = 'vscode',
}

solarized:setup(your_config or default_config)
```
