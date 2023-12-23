return function(c, config)
  local utils = require('solarized.utils')
  local darken = require('solarized.utils.colors').darken
  local base04 = darken(c.base03, 10)
  local set_hl = utils.set_hl

  set_hl('NvimTreeSymlink', { link = 'Underlined' })
  set_hl('NvimTreeSymlinkIcon', { link = 'Directory' })
  -- set_hl('NvimTreeSymlinkFolderName') --   (Directory)
  set_hl('NvimTreeFolderName', { fg = c.base0 }) -- (Directory)
  set_hl('NvimTreeRootFolder', { link = 'Title' })
  set_hl('NvimTreeFolderIcon', { link = 'Directory' })
  -- set_hl('NvimTreeOpenedFolderIcon') -- (NvimTreeFolderIcon)
  -- set_hl('NvimTreeClosedFolderIcon') -- (NvimTreeFolderIcon)
  -- set_hl('NvimTreeFileIcon')
  set_hl('NvimTreeEmptyFolderName', { fg = c.base0 }) -- (Directory)
  -- set_hl('NvimTreeOpenedFolderName') -- (Directory)
  set_hl('NvimTreeExecFile', { link = 'Function' })
  set_hl('NvimTreeOpenedFile', { fg = c.orange, bold = true })
  set_hl('NvimTreeModifiedFile', { fg = c.change })
  set_hl('NvimTreeSpecialFile', { link = 'Special' })
  -- set_hl('NvimTreeImageFile')
  set_hl('NvimTreeIndentMarker', { fg = c.base01 })
  -- set_hl('NvimTreeLspDiagnosticsError') -- (DiagnosticError)
  -- set_hl('NvimTreeLspDiagnosticsWarning') -- (DiagnosticWarn)
  set_hl('NvimTreeLspDiagnosticsInformation') -- (DiagnosticInfo)
  set_hl('NvimTreeLspDiagnosticsHint') -- (DiagnosticHint)
  set_hl('NvimTreeGitDirty', { fg = c.change })
  set_hl('NvimTreeGitStaged', { fg = c.add })
  set_hl('NvimTreeGitMerge', { fg = c.change })
  set_hl('NvimTreeGitRenamed', { fg = c.add })
  set_hl('NvimTreeGitNew', { fg = c.add })
  set_hl('NvimTreeGitDeleted', { fg = c.delete })
  -- set_hl('NvimTreeGitIgnored') -- (Comment)
  -- set_hl('NvimTreeWindowPicker')
  set_hl(
    'NvimTreeNormal',
    { fg = c.base0, bg = base04 },
    { transparent = config.transparent }
  )
  set_hl('NvimTreeNormalFloat', { link = 'NvimTreeNormal' })
  set_hl('NvimTreeEndOfBuffer', { fg = base04 }) -- (NonText)
  -- set_hl('NvimTreeCursorLine') -- (CursorLine)
  -- set_hl('NvimTreeCursorLineNr') -- (CursorLineNr)
  -- set_hl('NvimTreeLineNr') -- (LineNr)
  set_hl(
    'NvimTreeWinSeparator',
    { fg = base04, bg = base04 },
    { transparent = config.transparent }
  ) -- (WinSeparator)
  -- set_hl('NvimTreeCursorColumn') -- (CursorColumn)
  --
  -- There are also links for file highlight with git properties, linked to their
  -- Git equivalent:
  --
  -- set_hl('NvimTreeFileDirty') -- (NvimTreeGitDirty)
  -- set_hl('NvimTreeFileStaged') -- (NvimTreeGitStaged)
  -- set_hl('NvimTreeFileMerge') -- (NvimTreeGitMerge)
  -- set_hl('NvimTreeFileRenamed') -- (NvimTreeGitRenamed)
  -- set_hl('NvimTreeFileNew') -- (NvimTreeGitNew)
  -- set_hl('NvimTreeFileDeleted') -- (NvimTreeGitDeleted)
  -- set_hl('NvimTreeFileIgnored') -- (NvimTreeGitIgnored)
  -- set_hl('NvimTreeLiveFilterPrefix')
  -- set_hl('NvimTreeLiveFilterValue')
  -- set_hl('NvimTreeBookmark')
end
