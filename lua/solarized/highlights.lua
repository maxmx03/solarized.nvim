local utils = require('solarized.utils')
local colorhelper = require('solarized.utils.colors')

local M = {}

--- Update or override highlights defined by the user
---
--- @param highlights table   A table containing highlight names as keys and their updated values as values
function M.custom_hl(highlights)
  local get_hl = utils.get_hl

  for highlight_name, highlight_value in pairs(highlights) do
    local highlight = get_hl(highlight_name)
    local val = {}

    if highlight_value.link then
      val = highlight_value
    else
      val = vim.tbl_extend('force', highlight, highlight_value)
    end

    vim.api.nvim_set_hl(0, highlight_name, val)
  end
end

--- Load and apply highlights based on the enabled highlights specified in the configuration
---
--- @param colors table   A table containing color values
--- @param config table   A table containing configuration options, including the enabled highlights and theme
function M.load_plugins(colors, config)
  for plugin, enabled in pairs(config.enables) do
    if enabled then
      local highlight_groups =
        require(string.format('solarized.themes.%s.%s', config.theme, plugin))

      highlight_groups(colors, config)
    end
  end
end

--- Set highlights based on the provided colors and configuration
---
--- @param colors table   A table containing color values
--- @param config table   A table containing configuration options
function M.highlights(colors, config)
  if config.theme == 'neo' or config.theme == 'default' then
    M.load_plugins(colors, config)
  else
    config.theme = 'default'
    M.load_plugins(colors, config)
  end

  if vim.fn.has('nvim-0.9.4') and config.autocmd then
    local extras = require('solarized.autocmd')
    extras.load_autocmd()
    extras.load_autocmd_highlights(colors)
  end

  utils.on_config({
    tbl = function()
      M.custom_hl(config.highlights)
    end,
    fnc = function()
      M.custom_hl(config.highlights(colors, colorhelper))
    end,
  }, config.highlights)
end

return M
