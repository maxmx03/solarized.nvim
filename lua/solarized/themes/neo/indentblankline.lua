return function(c)
  local utils = require('solarized.utils')
  local colortool = require('solarized.utils.colors')
  local darken = colortool.darken
  local lighten = colortool.lighten
  local set_hl = utils.set_hl

  if vim.o.background == 'dark' then
    set_hl('IndentBlanklineChar', { fg = darken(c.green, 20) }) -- Highlight of indent character. Default: Whitespace
    set_hl('IndentBlanklineSpaceChar', { link = 'IndentBlanklineChar' }) -- Highlight of space character. Default: Whitespace
    set_hl('IndentBlanklineContextChar', { fg = c.green }) -- Highlight of indent character when base of current context. Default: Label
    set_hl(
      'IndentBlanklineContextSpaceChar',
      { link = 'IndentBlanklineContextChar' }
    ) -- Highlight of space characters one indent level of the current context. Default: Label
    set_hl('IblIndent', { fg = darken(c.green, 20), nocombine = true })
    set_hl('IblScope', { fg = c.green, nocombine = true })
  else
    set_hl('IndentBlanklineChar', { fg = lighten(c.blue, 20) }) -- Highlight of indent character. Default: Whitespace
    set_hl('IndentBlanklineSpaceChar', { link = 'IndentBlanklineChar' }) -- Highlight of space character. Default: Whitespace
    set_hl('IndentBlanklineContextChar', { fg = c.blue }) -- Highlight of indent character when base of current context. Default: Label
    set_hl(
      'IndentBlanklineContextSpaceChar',
      { link = 'IndentBlanklineContextChar' }
    ) -- Highlight of space characters one indent level of the current context. Default: Label
    set_hl('IblIndent', { fg = lighten(c.blue, 20), nocombine = true })
    set_hl('IblScope', { fg = c.blue, nocombine = true })
  end

  -- set_hl('IndentBlanklineSpaceCharBlankline', {}) -- Highlight of space character on blank lines. Default: Whitespace
  -- set_hl('IndentBlanklineContextStart', {}) -- Highlight of the first line of the current context. Default: Label
end
