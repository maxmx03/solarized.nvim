local solarized = require 'solarized'
local colors = solarized.colors

local M = {
  normal = {
    a = { fg = colors.bg, bg = colors.primary },
    b = { fg = colors.bg_alt, bg = colors.content },
    c = { fg = colors.fg, bg = solarized:is_transparent(colors.bg) },
    z = { fg = colors.bg, bg = colors.primary },
  },
  insert = { a = { fg = colors.bg, bg = colors.green } },
  visual = { a = { fg = colors.bg, bg = colors.magenta } },
  replace = { a = { fg = colors.bg, bg = colors.yellow } },
}

return M
