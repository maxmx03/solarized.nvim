return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('GitSignsAdd', { fg = c.add }) -- Used for the text of 'add' signs
  set_hl('GitSignsChange', { fg = c.change }) -- Used for the text of 'change' signs
  set_hl('GitSignsDelete', { fg = c.delete }) -- Used for the text of 'delete' signs
end
