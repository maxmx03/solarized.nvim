return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('IndentBlanklineChar', { fg = c.base01 }) -- Highlight of indent character. Default: Whitespace
  set_hl('IndentBlanklineSpaceChar', { link = 'IndentBlanklineChar' }) -- Highlight of space character. Default: Whitespace
  set_hl('IndentBlanklineContextChar', { fg = c.base0 }) -- Highlight of indent character when base of current context. Default: Label
  set_hl(
    'IndentBlanklineContextSpaceChar',
    { link = 'IndentBlanklineContextChar' }
  ) -- Highlight of space characters one indent level of the current context. Default: Label
  set_hl('IblIndent', { fg = c.base0, nocombine = true })
  set_hl('IblScope', { fg = c.base01, nocombine = true })

  -- set_hl('IndentBlanklineSpaceCharBlankline', {}) -- Highlight of space character on blank lines. Default: Whitespace
  -- set_hl('IndentBlanklineContextStart', {}) -- Highlight of the first line of the current context. Default: Label
end
