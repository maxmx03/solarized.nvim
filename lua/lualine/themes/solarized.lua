local solarized_palette = require('solarized.palette')
local colors = solarized_palette.get_colors()

local M = {
  normal = {
    a = { fg = colors.base03, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.base02, bg = colors.base00 },
    c = { fg = colors.base00, bg = colors.base02 },
    z = { fg = colors.base03, bg = colors.blue },
  },
  insert = {
    a = { fg = colors.base03, bg = colors.green },
  },
  visual = {
    a = { fg = colors.base03, bg = colors.magenta },
  },
  replace = {
    a = { fg = colors.base03, bg = colors.red },
  },
  command = {
    a = { fg = colors.base03, bg = colors.orange },
  },
}

return M
