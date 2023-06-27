--- Update or override highlights defined by the user
---
--- @param highlights table   A table containing highlight names as keys and their updated values as values
local function custom_hl(highlights)
  local utils = require('solarized.utils')
  local get_hl = utils.get_hl

  for highlight_name, highlight_value in pairs(highlights) do
    local highlight = get_hl(highlight_name)

    local val = vim.tbl_extend('force', highlight, highlight_value)

    vim.api.nvim_set_hl(0, highlight_name, val)
  end
end

--- Load and apply highlights based on the enabled highlights specified in the configuration
---
--- @param colors table   A table containing color values
--- @param config table   A table containing configuration options, including the enabled highlights and theme
local function load_highlights(colors, config)
  for highlight, enabled in pairs(config.enables) do
    if enabled then
      local highlights = require(string.format('solarized.themes.%s.%s', config.theme, highlight))

      highlights(colors, config)
    end
  end
end

--- Set highlights based on the provided colors and configuration
---
--- @param colors table   A table containing color values
--- @param config table   A table containing configuration options
return function(colors, config)
  if string.match(config.theme, 'neo$') or string.match(config.theme, 'neosolarized$') then
    load_highlights(colors, config)
  else
    load_highlights(colors, config)
  end

  if type(config.highlights) == 'table' and not vim.tbl_isempty(config.highlights) then
    custom_hl(config.highlights)
  elseif type(config.highlights) == 'function' then
    custom_hl(config.highlights(colors))
  end
end
