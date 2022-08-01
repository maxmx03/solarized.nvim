local M = {}
M.colors = {}

function M:get_colors()
  return self.colors
end

local function override(value, params, original)
  if type(value) == 'function' then
    for k, v in pairs(value(params)) do
      original[k] = v
    end
  elseif type(value) == 'table' then
    for k, v in pairs(value) do
      original[k] = v
    end
  end

  return original
end

function M.setup(user_config)
  local config = require 'solarized.src.config'
  config.style = (user_config or config).style or config.style
  config.mode = (user_config or config).mode
  config.theme = (user_config or config).theme
  config.transparent = (user_config or config).transparent
  M.colors = require('solarized.src.colors')[config.mode]

  local highlights = require(string.format('solarized.src.themes.%s', config.theme))(M.colors, config)

  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'solarized'

  local utils = require 'solarized.src.utils'

  if user_config then
    if user_config.colors then
      M.colors = override(user_config.colors, M.colors, M.colors)
    elseif user_config.highlights then
      vim.api.nvim_create_autocmd({ 'Colorscheme' }, {
        callback = function()
          highlights = override(user_config.highlights, M.colors, highlights)

          utils.set_highlights(highlights)
        end,
      })

      return
    end
  end

  utils.set_highlights(highlights)
end

return M
