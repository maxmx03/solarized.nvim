return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl(
    'GitSignsAdd',
    { fg = c.add, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for the text of 'add' signs
  set_hl(
    'GitSignsChange',
    { fg = c.change, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for the text of 'change' signs
  set_hl(
    'GitSignsDelete',
    { fg = c.delete, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Used for the text of 'delete' signs
end
