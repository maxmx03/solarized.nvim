return function(c)
  local set_hl = require('solarized.utils').set_hl

  set_hl('NoiceFormatProgressTodo', { fg = c.base01, reverse = true })
  set_hl('NoiceFormatProgressDone', { fg = c.cyan, reverse = true })
  set_hl('NoiceLspProgressSpinner', { fg = c.cyan })
  set_hl('NoiceLspProgressClient', { fg = c.blue })
  set_hl('NoiceLspProgressTitle', { link = 'Title' })
end
