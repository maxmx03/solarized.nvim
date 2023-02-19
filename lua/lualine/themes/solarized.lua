local solarized = require 'solarized'
local chromatic = require 'solarized.utils.chromatic'
local colors = solarized.colors
local darken = chromatic.darken

local M = {
  normal = {
    a = { fg = darken(colors.blue, 50), bg = colors.blue, gui = 'bold' },
    b = { fg = colors.bg_alt, bg = colors.content },
    c = { fg = colors.content, bg = solarized:is_transparent(colors.bg_alt) },
    z = { fg = darken(colors.primary, 50), bg = colors.blue },
  },
  insert = {
    a = { fg = darken(colors.green, 50), bg = colors.green },
  },
  visual = {
    a = { fg = darken(colors.magenta, 50), bg = colors.magenta },
  },
  replace = {
    a = { fg = darken(colors.red, 50), bg = colors.red },
  },
  command = {
    a = { fg = colors.blue, bg = darken(colors.blue, 50) },
  },
}

return M
