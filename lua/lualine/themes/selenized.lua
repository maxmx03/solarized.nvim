if vim.o.background == 'dark' then
  local palette = require 'solarized.palette'
  local c = palette.selenized
  return {
    normal = {
      a = { fg = c.base03, bg = c.blue, gui = 'bold' },
      b = { fg = c.base02, bg = c.base1 },
      c = { fg = c.base1, bg = c.base02 },
      z = { fg = c.base03, bg = c.blue },
    },
    insert = {
      a = { fg = c.base03, bg = c.green },
    },
    visual = {
      a = { fg = c.base03, bg = c.magenta },
    },
    replace = {
      a = { fg = c.base03, bg = c.red },
    },
    command = {
      a = { fg = c.base03, bg = c.orange },
    },
  }
else
  local palette = require 'solarized.palette'
  local c = palette.selenized
  return {
    normal = {
      a = { fg = c.base3, bg = c.blue, gui = 'bold' },
      b = { fg = c.base2, bg = c.base01 },
      c = { fg = c.base01, bg = c.base2 },
      z = { fg = c.base3, bg = c.blue },
    },
    insert = {
      a = { fg = c.base3, bg = c.green },
    },
    visual = {
      a = { fg = c.base3, bg = c.magenta },
    },
    replace = {
      a = { fg = c.base3, bg = c.red },
    },
    command = {
      a = { fg = c.base3, bg = c.orange },
    },
  }
end
