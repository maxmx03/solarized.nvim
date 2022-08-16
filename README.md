# Solarized Colorscheme for Neovim

## [Visit The Solarized homepage](https://ethanschoonover.com/solarized/)

## Screenshots

![solarized dark](https://github.com/maxmx03/milianor-dotfiles/blob/main/docs/solarized-dark.png")
![solarized light](https://github.com/maxmx03/milianor-dotfiles/blob/main/docs/solarized-light.png")

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

## Lualine Custom theme

```lua
local solarized = require 'solarized'
local colors = solarized.colors

local theme = {
  normal = {
    a = { fg = colors.bg, bg = colors.primary },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.bg_alt, bg = colors.content },
  },
  insert = { a = { fg = colors.bg, bg = colors.blue } },
  visual = { a = { fg = colors.bg, bg = colors.orange } },
  replace = { a = { fg = colors.bg, bg = colors.green } },
}

local empty = require('lualine.component'):extend()
function empty:draw(default_highlight)
  self.status = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.fg, bg = colors.bg } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' } or { left = '' }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg '/'
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

local function modified()
  if vim.bo.modified then
    return '+'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '-'
  end
  return ''
end

lualine.setup {
  options = {
    theme = theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = process_sections {
    lualine_a = { 'mode' },
    lualine_b = {
      { 'branch', color = { fg = colors.bg, bg = colors.green } },
      'diff',
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'error' },
        diagnostics_color = { error = { bg = colors.red, fg = colors.bg } },
      },
      {
        'diagnostics',
        source = { 'nvim' },
        sections = { 'warn' },
        diagnostics_color = { warn = { bg = colors.orange, fg = colors.bg } },
      },
      { 'filename', file_status = false, path = 1 },
      { modified, color = { bg = colors.red } },
      {
        '%w',
        cond = function()
          return vim.wo.previewwindow
        end,
      },
      {
        '%r',
        cond = function()
          return vim.bo.readonly
        end,
      },
      {
        '%q',
        cond = function()
          return vim.bo.buftype == 'quickfix'
        end,
      },
    },
    lualine_c = {},
    lualine_x = { search_result, 'filetype' },
    lualine_y = {
      {
        -- Lsp server name .
        function()
          local msg = 'No Active Lsp'
          local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
          local clients = vim.lsp.get_active_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 and client.name ~= 'null-ls' then
              return client.name
            end
          end
          return msg
        end,
        color = { fg = colors.bg_alt, bg = colors.content },
      },
    },
    lualine_z = { '%p%%/%L' },
  },
  inactive_sections = {
    lualine_c = { '%f %y %m' },
    lualine_x = {},
  },
}
```
