return function(c, config)
  local utils = require('solarized.utils')
  local darken = require('solarized.utils.colors').darken
  local set_hl = utils.set_hl

  set_hl('NeoTreeNormal', {
    fg = c.base0,
  }, { transparent = config.transparent })
  set_hl('NeoTreeNormalNC', { link = 'NeoTreeNormal' })
  set_hl('NeoTreeEndOfBuffer', { fg = c.base02 })
  set_hl('NeoTreeRootName', { link = 'Directory' })
  set_hl('NeoTreeFileName', { fg = c.base0 })
  set_hl('NeoTreeFileNameOpened', { link = 'Directory' })
  set_hl('NeoTreeFloatBorder', { link = 'WinSeparator' })
  set_hl('NeoTreeFloatTitle', { link = 'Title' })
  set_hl('NeoTreeGitAdded', { fg = c.add, bg = 'NONE' })
  set_hl('NeoTreeGitConflict', { fg = c.change })
  set_hl('NeoTreeGitDeleted', { fg = c.delete })
  set_hl('NeoTreeGitIgnored', { fg = c.base01, italic = true })
  set_hl('NeoTreeGitModified', { fg = c.change })
  set_hl('NeoTreeGitUnstaged', { fg = c.change })
  set_hl('NeoTreeGitUntracked', { fg = c.change })
  set_hl('NeoTreeGitStaged', { fg = c.add })
  set_hl('NeoTreeIndentMarker', { fg = c.base01 })
  set_hl('NeoTreeDotfile', { fg = c.base01 })
  set_hl('NeoTreeFileStats', { fg = c.base01 })
  set_hl('NeoTreeTitleBar', { fg = darken(c.blue, 50), bg = c.blue })
end
