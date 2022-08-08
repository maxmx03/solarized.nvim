local solarized = require 'solarized.src.colorscheme'
local utils = require 'solarized.src.utils'
local colors = require 'solarized.src.colors'

function solarized.setup(user_config)
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'solarized'

  -- user config
  solarized.config = vim.tbl_extend('force', solarized.config, user_config or {})

  -- colors: dark or light
  solarized.colors = colors[solarized.config.mode]

  -- override or add highlight group
  if user_config and type(user_config.colors) == 'table' then
    solarized.colors = vim.tbl_extend('force', solarized.colors, user_config.colors)
  elseif user_config and type(user_config.colors) == 'function' then
    solarized.colors = vim.tbl_extend('force', solarized.colors, user_config.colors(solarized.colors))
  end

  -- highlights: vim, neovim, vscode
  require('solarized.src.themes.' .. solarized.config.theme)

  -- override or add colors
  if user_config and type(user_config.highlights) == 'table' then
    solarized.highlights = vim.tbl_extend('force', solarized.highlights, user_config.highlights)
  elseif user_config and type(user_config.highlights) == 'function' then
    solarized.highlights = vim.tbl_extend('force', solarized.highlights, user_config.highlights(solarized.colors))
  end

  utils.set_highlights(solarized.highlights)
end

return solarized
