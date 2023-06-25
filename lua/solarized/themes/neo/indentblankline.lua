return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl(
    'IndentBlanklineChar',
    { fg = c.base01, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Highlight of indent character.
  set_hl(
    'IndentBlanklineSpaceChar',
    { fg = c.base01, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Highlight of space character.
  -- set_hl('IndentBlanklineSpaceCharBlankline') -- Highlight of space character on blank lines.
  set_hl('IndentBlanklineContextChar', { link = 'Keyword' }) -- Highlight of indent character when base of current context.
  set_hl('IndentBlanklineContextSpaceChar', { link = 'Keyword' }) -- Highlight of space characters one indent level of the current context.
  -- set_hl('IndentBlanklineContextStart') -- Highlight of the first line of the current context.
end
