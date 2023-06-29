return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  -- MiniCursor
  set_hl('MiniCursorword', { bg = c.base02 })

  -- MiniStatusLine
  set_hl('MiniStatuslineModeNormal', { fg = c.base03, bg = c.blue })
  set_hl('MiniStatuslineModeInsert', { fg = c.base03, bg = c.green })
  set_hl('MiniStatuslineModeVisual', { fg = c.base03, bg = c.magenta })
  set_hl('MiniStatuslineModeReplace', { fg = c.base03, bg = c.red })
  set_hl('MiniStatuslineModeCommand', { fg = c.base03, bg = c.orange })
  set_hl('MinistatusLineFileName', { fg = c.base0, bg = c.base02 })
  set_hl('MiniStatuslineDevinfo', { fg = c.base03, bg = c.base1 })
  set_hl('MiniStatuslineFileinfo', { fg = c.base03, bg = c.base1 })
  set_hl('MiniStatuslineInactive', { fg = c.base01, bg = c.base03 })

  -- MiniTabLine
  set_hl('MiniTablineCurrent', { fg = c.base2, bg = c.base1 })
  set_hl('MiniTablineVisible', { fg = c.base2, bg = c.base03 })
  set_hl('MiniTablineHidden', { fg = c.base01, bg = c.base03 })
  set_hl('MiniTablineModifiedCurrent', { link = 'MiniTabLineCurrent' })
  set_hl('MiniTablineModifiedVisible', { link = 'MiniTablineVisible' })
  set_hl('MiniTablineModifiedHidden', { link = 'MiniTablineHidden' })
  set_hl('MiniTablineFill', { link = 'NormalFloat' })
  set_hl('MiniTablineTabpagesection', { link = 'NormalFloat' })

  -- MiniStarter
  set_hl('MiniStarterCurrent', { link = 'CursorLine' })
  set_hl('MiniStarterHeader', { fg = c.base00 })
  set_hl('MiniStarterFooter', { fg = c.base00 })
  set_hl('MiniStarterItem', { fg = c.base0 })
  set_hl('MiniStarterItemBullet', { fg = c.blue })
  set_hl('MiniStarterItemPrefix', { fg = c.blue })
  set_hl('MiniStarterSection', { link = 'Title' })
  set_hl('MiniStarterQuery', { fg = c.magenta, bg = 'NONE', bold = true })
end
