local M = {}

--- Get the solarized colors based on the current Vim background setting
---
--- @return table colors   A table containing the solarized colors
function M.get_colors()
  local dark = {
    base04 = '#00222b', -- background tone darker (column/nvim-tree)
    base03 = '#002b36', -- background tone dark (main)
    base02 = '#073642', -- background tone (highlight/menu/LineNr)
    base01 = '#586e75', -- content tone (comment)
    base00 = '#657b83', -- content tone (winseparator)
    base0 = '#839496', -- content tone (foreground)
    base1 = '#93a1a1', -- content tone (statusline/tabline)
    base2 = '#eee8d5', -- background tone light (highlight)
    base3 = '#fdf6e3', -- background tone lighter (main)
    -- accent
    yellow = '#b58900',
    orange = '#cb4b16',
    red = '#dc322f',
    magenta = '#d33682',
    violet = '#6c71c4',
    blue = '#268bd2',
    cyan = '#2aa198',
    green = '#859900',
    -- git
    add = '#859900',
    change = '#b58900',
    delete = '#dc322f',
    -- diagnostic
    info = '#268bd2',
    hint = '#859900',
    warning = '#b58900',
    error = '#dc322f',
  }

  local light = {
    base3 = '#002b36', -- background tone darker (main)
    base2 = '#073642', -- background tone dark (highlight)
    base1 = '#586e75', -- content tone (statusline/tabline)
    base0 = '#657b83', -- content tone (foreground)
    base00 = '#839496', -- content tone (winseparator)
    base01 = '#93a1a1', -- content tone (comment)
    base02 = '#eee8d5', -- background tone (highlight/menu/LineNr)
    base03 = '#fdf6e3', -- background tone lighter (main)
    base04 = '#fcf2d8', -- background tone (column/nvim-tree)
    -- accent
    yellow = '#b58900',
    orange = '#cb4b16',
    red = '#dc322f',
    magenta = '#d33682',
    violet = '#6c71c4',
    blue = '#268bd2',
    cyan = '#2aa198',
    green = '#859900',
    -- git
    add = '#859900',
    change = '#b58900',
    delete = '#dc322f',
    -- diagnostic
    info = '#268bd2',
    hint = '#859900',
    warning = '#b58900',
    error = '#dc322f',
  }

  if vim.o.background == 'dark' then
    return dark
  end

  return light
end

--- Filter colors by selecting valid hexadecimal color values.
---
--- @param colors table A table containing color values to be filtered.
--- @return table Filtered colors table, containing only valid hexadecimal color values.
local function filter_colors(colors)
  local filtered_colors = {}

  for color_name, color_value in pairs(colors) do
    if string.match(color_value, '#%x%x%x%x%x%x$') then
      filtered_colors[color_name] = color_value
    elseif string.match(color_value, '#%x%x%x$') then
      color_value = string.sub(color_value, 2, #color_value)
      filtered_colors[color_name] = '#' .. string.rep(color_value, 2)
    end
  end

  return filtered_colors
end

--- Merge custom colors with solarized default colors
---
--- @param colors table A table containing new color values to be added.
--- @param custom_colors table
function M.extend_colors(colors, custom_colors)
  local c = vim.deepcopy(colors)
  custom_colors = filter_colors(custom_colors)

  return vim.tbl_extend('force', c, custom_colors)
end

return M
