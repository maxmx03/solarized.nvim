return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('WhichKey', { fg = c.base0 }) -- the key
  set_hl('WhichKeyGroup', { fg = c.blue }) -- a group
  set_hl('WhichKeySeparator', { fg = c.magenta }) -- the separator between the key and its label
  set_hl('WhichKeyDesc', { fg = c.base2 }) -- the label of the key
  -- set_hl('WhichKeyFloat') -- Normal in the popup window
  -- set_hl('WhichKeyBorder', { link = 'WinSeparator' })
  -- set_hl('WhichKeyValue') -- used by plugins that provide values
end
