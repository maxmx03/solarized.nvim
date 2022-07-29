local Colorscheme = require 'solarized.src.colorscheme'
local Config = require 'solarized.src.config'
local colors = require 'solarized.src.colors'
local vim_theme = require 'solarized.src.themes.vim'
local neovim_theme = require 'solarized.src.themes.neovim'
local vscode_theme = require 'solarized.src.themes.vscode'
local utils = require 'solarized.src.utils'

local config = Config:new {}
local solarized = Colorscheme:new({}, config)

function solarized.setup(user_config)
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'solarized'

  solarized:set_colors(colors.dark, colors.light)

  if user_config then
    solarized.config:set_mode(user_config.mode)
    solarized.config:set_theme(user_config.theme)
    solarized.config:set_transparent(user_config.transparent)

    if user_config.colors then
      for name, color in pairs(user_config.colors) do
        solarized.palette[solarized.config.mode][name] = color
      end
    end

    if user_config.style then
      solarized.config:set_comments_style(user_config.style.comments)
      solarized.config:set_keywords_style(user_config.style.keywords)
      solarized.config:set_functions_style(user_config.style.functions)
    end
  end

  solarized:set_highlights_themes { vim = vim_theme, neovim = neovim_theme, vscode = vscode_theme }

  local highlight_groups = solarized:get_highlights_theme()

  utils.set_highlights(highlight_groups)
end

return solarized
