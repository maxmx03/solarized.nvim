local solarized = require 'solarized.src.colorscheme'
local utils = require 'solarized.src.utils'
local colors = require 'solarized.src.colors'
local colortool = require 'solarized.src.colortool'
local darken = colortool.darken
local blend = colortool.blend

function solarized.setup(user_config)
  _G.user_config = user_config

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
  solarized.colors = colors[vim.o.background]
  vim.cmd(string.format('set background=%s', vim.o.background))

  -- -- override or add colors
  if user_config and type(user_config.colors) == 'table' then
    solarized.colors = vim.tbl_extend('force', solarized.colors, user_config.colors)
  elseif user_config and type(user_config.colors) == 'function' then
    solarized.colors = vim.tbl_extend('force', solarized.colors, user_config.colors(solarized.colors, darken, blend))
  end

  require('solarized.src.themes.' .. solarized.config.theme)(solarized)

  if user_config and type(user_config.highlights) == 'table' then
    solarized.highlights = vim.tbl_extend('force', solarized.highlights, user_config.highlights)
  elseif user_config and type(user_config.highlights) == 'function' then
    solarized.highlights =
      vim.tbl_extend('force', solarized.highlights, user_config.highlights(solarized.colors, darken, blend))
  end

  utils.set_highlights(solarized.highlights)
end

local solarized_colors = { 'solarized', 'solarized8', 'solarized16' }

local function on_colorscheme_change()
  if vim.tbl_contains(solarized_colors, vim.g.colors_name) then
    -- Call your Solarized setup function here
    vim.api.nvim_command "lua require('solarized').setup(_G.user_config)"
  end
end

-- Create the autocmd to listen for the colorscheme event
vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = on_colorscheme_change,
})

return solarized
