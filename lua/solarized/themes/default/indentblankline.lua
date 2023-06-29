return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  if vim.o.background == 'dark' then
    set_hl('IndentBlanklineChar', { fg = '#475252' }) -- Highlight of indent character. Default: Whitespace
    set_hl('IndentBlanklineSpaceChar', { link = 'IndentBlanklineChar' }) -- Highlight of space character. Default: Whitespace
    set_hl('IndentBlanklineContextChar', { fg = '#647373' }) -- Highlight of indent character when base of current context. Default: Label
    set_hl('IndentBlanklineContextSpaceChar', { link = 'IndentBlanklineContextChar' }) -- Highlight of space characters one indent level of the current context. Default: Label
  else
    set_hl('IndentBlanklineChar', { fg = '#cbd5d8' }) -- Highlight of indent character. Default: Whitespace
    set_hl('IndentBlanklineSpaceChar', { link = 'IndentBlanklineChar' }) -- Highlight of space character. Default: Whitespace
    set_hl('IndentBlanklineContextChar', { fg = '#a8b8bd' }) -- Highlight of indent character when base of current context. Default: Label
    set_hl('IndentBlanklineContextSpaceChar', { link = 'IndentBlanklineContextChar' }) -- Highlight of space characters one indent level of the current context. Default: Label
  end

  -- set_hl('IndentBlanklineSpaceCharBlankline', {}) -- Highlight of space character on blank lines. Default: Whitespace
  -- set_hl('IndentBlanklineContextStart', {}) -- Highlight of the first line of the current context. Default: Label
end
