return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('HopNextKey', { fg = c.magenta })
  set_hl('HopNextKey1', { fg = c.blue })
  set_hl('HopNextKey2', { fg = '#1b6294' })
  set_hl('HopUnmatched', { fg = c.base01 })
end
