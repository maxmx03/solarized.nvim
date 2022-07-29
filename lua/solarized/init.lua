local Colorscheme = require 'solarized.src.colorscheme'
local Config = require 'solarized.src.config'
local colors = require 'solarized.src.colors'
local vim_theme = require 'solarized.src.themes.vim'
local neovim_theme = require 'solarized.src.themes.neovim'
local vscode_theme = require 'solarized.src.themes.vscode'
local utils = require 'solarized.src.utils'

local config = Config:new {}
local solarized = Colorscheme:new({}, config)

solarized:set_colors(colors.dark, colors.light)

function solarized.setup(user_config)
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'solarized'

  if user_config then
    solarized.config:set_mode(user_config.mode)
    solarized.config:set_theme(user_config.theme)
    solarized.config:set_transparent(user_config.transparent)

    if user_config.style then
      solarized.config:set_comments_style(user_config.style.comments)
      solarized.config:set_keywords_style(user_config.style.keywords)
      solarized.config:set_functions_style(user_config.style.functions)
    end

    if user_config.colors and type(user_config.colors) == 'table' then
      for name, color in pairs(user_config.colors) do
        solarized.palette[solarized.config.mode][name] = color
      end
    elseif user_config.colors and type(user_config.colors) == 'function' then
      local c = solarized:get_colors()

      for name, color in pairs(user_config.colors(c)) do
        solarized.palette[solarized.config.mode][name] = color
      end
    end
  end

  solarized:set_highlights_themes { vim = vim_theme, neovim = neovim_theme, vscode = vscode_theme }

  if user_config and user_config.highlights then
    vim.api.nvim_create_autocmd({ 'Colorscheme' }, {
      pattern = '*',
      callback = function()
        local c = solarized:get_colors()

        if user_config and user_config.highlights then
          if type(user_config.highlights) == 'function' then
            for group_name, value in pairs(user_config.highlights(c)) do
              solarized.highlights[solarized.config.theme][group_name] = value
            end
          elseif type(user_config.highlights) == 'table' then
            for group_name, value in pairs(user_config.highlights) do
              solarized.highlights[solarized.config.theme][group_name] = value
            end
          end
        end

        local highlight_groups = solarized:get_highlights_theme()

        utils.set_highlights(highlight_groups)
      end,
    })
  else
    local highlight_groups = solarized:get_highlights_theme()

    utils.set_highlights(highlight_groups)
  end
end

return solarized
