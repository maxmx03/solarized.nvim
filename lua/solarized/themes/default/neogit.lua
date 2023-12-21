return function(c)
  local blend = require('solarized.utils.colors').blend
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl
  local alpha = 0.05

  set_hl('NeogitCursorLine', { link = 'CursorLine' })
  set_hl('NeogitBranch', { fg = c.magenta })
  set_hl('NeogitRemote', { fg = c.violet })
  set_hl(
    'NeogitHunkHeader',
    { fg = c.orange, bg = blend(c.orange, c.base03, alpha) }
  )
  set_hl('NeogitHunkHeaderHighlight', { link = 'Title' })
  set_hl('NeogitDiffContextHighlight', { fg = c.base00, bg = c.base03 })
  set_hl('NeogitDiffContext', { fg = c.base00, bg = c.base03 })
  set_hl(
    'NeogitDiffDeleteHighlight',
    { fg = c.red, bg = blend(c.red, c.base03, alpha) }
  )
  set_hl('NeogitDiffDelete', { fg = c.red })
  set_hl(
    'NeogitDiffAddHighlight',
    { fg = c.green, bg = blend(c.green, c.base03, alpha) }
  )
  set_hl('NeogitDiffAdd', { fg = c.green })
end
