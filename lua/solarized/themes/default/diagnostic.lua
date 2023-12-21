return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('DiagnosticError', { fg = c.error }) -- Used as the base highlight group.(except Underline)
  set_hl('DiagnosticWarn', { fg = c.warning }) --Used as the base highlight group.(except Underline)
  set_hl('DiagnosticInfo', { fg = c.info }) -- Used as the base highlight group.(except Underline)
  set_hl('DiagnosticHint', { fg = c.hint }) -- Used as the base highlight group.(except Underline)
  set_hl('DiagnosticOk', { fg = c.cyan }) -- Used as the base highlight group.(except Underline)
  -- set_hl('DiagnosticVirtualTextError') -- Used for "Error" diagnostic virtual text.
  -- set_hl('DiagnosticVirtualTextWarn') -- Used for "Warn" diagnostic virtual text.
  -- set_hl('DiagnosticVirtualTextInfo') -- Used for "Info" diagnostic virtual text.
  -- set_hl('DiagnosticVirtualTextHint') -- Used for "Hint" diagnostic virtual text.
  -- set_hl('DiagnosticVirtualTextOk') -- Used for "Ok" diagnostic virtual text.
  set_hl('DiagnosticUnderlineError', { fg = c.error, sp = c.error }) --Used to underline "Error" diagnostics.
  set_hl('DiagnosticUnderlineWarn', { fg = c.warning, sp = c.warning }) -- Used to underline "Warn" diagnostics.
  set_hl('DiagnosticUnderlineInfo', { fg = c.info, sp = c.info }) -- Used to underline "Info" diagnostics.
  set_hl('DiagnosticUnderlineHint', { fg = c.hint, sp = c.hint }) -- Used to underline "Hint" diagnostics.
  set_hl('DiagnosticUnderlineOk', { fg = c.cyan, sp = c.cyan }) -- Used to underline "Ok" diagnostics.
  -- set_hl('DiagnosticFloatingError') -- Used to color "Error" diagnostic messages in diagnostics float.
  -- set_hl('DiagnosticFloatingWarn') -- Used to color "Warn" diagnostic messages in diagnostics float.
  -- set_hl('DiagnosticFloatingInfo') -- Used to color "Info" diagnostic messages in diagnostics float.
  -- set_hl('DiagnosticFloatingHint') -- Used to color "Hint" diagnostic messages in diagnostics float.
  -- set_hl('DiagnosticFloatingOk') -- Used to color "Ok" diagnostic messages in diagnostics float.
  set_hl(
    'DiagnosticSignError',
    { fg = c.error, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for "Error" signs in sign column.
  set_hl(
    'DiagnosticSignWarn',
    { fg = c.warning, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for "Warn" signs in sign column.
  set_hl(
    'DiagnosticSignInfo',
    { fg = c.info, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for "Info" signs in sign column.
  set_hl(
    'DiagnosticSignHint',
    { fg = c.hint, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for "Hint" signs in sign column.
  set_hl(
    'DiagnosticSignOk',
    { fg = c.cyan, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for "Ok" signs in sign column.
  -- set_hl('DiagnosticDeprecated') -- Used for deprecated or obsolete code.
  -- set_hl('DiagnosticUnnecessary') -- Used for unnecessary or unused code.
end
