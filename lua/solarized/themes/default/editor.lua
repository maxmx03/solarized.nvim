return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('ColorColumn', { bg = c.base02 }) -- used for columns
  set_hl('Conceal', { fg = c.blue }) -- placeholder characters
  set_hl('CurSearch', { fg = c.base2, bg = c.base02 }) -- highlight under cursor
  set_hl('Cursor', { fg = c.base03, bg = c.base0 }) -- character under cursor
  set_hl('lCursor', { link = 'Cursor' }) -- character under the cursor
  set_hl('CursorIM', { link = 'Cursor' }) -- like cursor, but IME mode
  set_hl('CursorColumn', { link = 'ColorColumn' }) -- screen-column at the cursor
  set_hl('CursorLine', { bg = c.base02, sp = c.base1 }) -- screen-line at the cursor
  set_hl('Directory', { fg = c.blue }) -- directory names
  set_hl('DiffAdd', { fg = c.add, reverse = true }) -- Added line
  set_hl('DiffChange', { fg = c.change, reverse = true }) -- Changed line
  set_hl('DiffDelete', { fg = c.delete, reverse = true }) -- Deleted line
  set_hl('DiffText', { fg = c.blue, reverse = true }) -- Changed Text
  set_hl('EndOfBuffer', { fg = c.base03 }) -- Filler lines (~)
  set_hl('TermCursor', { link = 'Cursor' }) -- Cursor in a focused terminal
  set_hl('TermCursorNC', { fg = c.base03, bg = c.base0 }) -- Cursor in an unfocused terminal
  set_hl('ErrorMsg', { fg = c.error, reverse = true }) -- Error messages on the command line
  set_hl(
    'WinSeparator',
    { fg = c.base00, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Separators between window splits
  set_hl(
    'Folded',
    { fg = c.base0, bg = c.base02, underline = true, bold = true }
  ) -- Line used for closed folds
  set_hl('FoldColumn', { fg = c.base0, bg = c.base02, bold = true }) -- 'foldcolumn'
  set_hl(
    'SignColumn',
    { fg = c.base0, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Column were signs are displayed
  set_hl('IncSearch', { fg = c.orange, standout = true }) -- 'incsearch' highlighting, also for the text replaced
  set_hl('Substitute', { link = 'IncSearch' }) -- :substitute replacement text highlight
  set_hl(
    'LineNr',
    { fg = c.base01, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Line number for ":number" and ":#" commands
  set_hl('LineNrAbove', { link = 'LineNr' }) -- Line number, above the cursor line
  set_hl('LineNrBelow', { link = 'LineNr' }) -- Line number, below the cursor
  set_hl(
    'CursorLineNr',
    { fg = c.base1, bg = c.base02, bold = true },
    { transparent = config.transparent }
  ) -- Like LineNr when 'cursorline' is set
  set_hl('CursorLineFold', { link = 'FoldColumn' }) -- Like FoldColumn when 'cursorline' is set
  set_hl('CursorLineSign', { link = 'SignColumn' }) -- Like SignColumn when 'cursorline' is set
  set_hl('MatchParen', { fg = c.red, bg = c.base01, bold = true }) -- Character under the cursor or just before it
  set_hl('ModeMsg', { fg = c.blue }) -- 'showmode' message (e.g., "-- INSERT --")
  set_hl('MsgArea', { link = 'Normal' }) -- 'Area for messages and cmdline'
  set_hl('MsgSeparator', { link = 'Normal' }) -- Separator for scrolled messages msgsep.
  set_hl('MoreMsg', { fg = c.blue }) -- more-prompt
  set_hl('NonText', { fg = c.base1, bold = true }) -- '@' at the end of the window
  set_hl(
    'Normal',
    { fg = c.base0, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Normal text
  set_hl('NormalFloat', { fg = c.base0, bg = c.base02 }) -- Normal text in floating windows
  set_hl('FloatBorder', { link = 'WinSeparator', bold = true }) -- Border of floating windows.
  set_hl('FloatTitle', { fg = c.orange }) -- Title of float windows.
  set_hl('NormalNC', { link = 'Normal' }) -- Normal text in non-current windows.
  set_hl(
    'Pmenu',
    { fg = c.base0, bg = c.base02 },
    { transparent = config.transparent }
  ) -- Popup menu: Normal item
  set_hl('PmenuSel', { fg = c.base2, bg = c.base01 }) -- Popup menu: Selected item
  set_hl('PmenuKind', { link = 'Pmenu' }) -- Popup menu: Normal item kind
  set_hl('PmenuKindSel', { link = 'PmenuSel' }) -- Popup menu: Selected item kind
  set_hl('PmenuExtra', { link = 'Pmenu' }) -- Popup menu: Normal item extra text
  set_hl('PmenuExtraSel', { link = 'PmenuSel' }) -- Popup menu: Selected item extra text
  set_hl('PmenuSbar', { fg = c.base0, bg = c.base2 }) -- Popup menu: Scrollbar
  set_hl('PmenuThumb', { fg = c.base03, bg = c.base0 }) -- Popup menu: Thumb of the scrollbar
  set_hl('Question', { fg = c.cyan, bold = true }) -- hit-enter prompt and yes/no questions.
  set_hl('QuickFixLine', { fg = c.base0, bg = c.base03 }) -- Current quickfix item in the quickfix window
  set_hl('Search', { fg = c.yellow, reverse = true }) -- Last search pattern highlighting
  set_hl('SpecialKey', { fg = c.red, reverse = true }) -- Unprintable characters: Text displayed differently from what it really is.
  set_hl('SpellBad', { sp = c.red, undercurl = true }) -- Word that is not recognized by the spellchecker.
  set_hl('SpellCap', { sp = c.violet, undercurl = true }) -- Word that should start with a capital
  set_hl('SpellLocal', { sp = c.yellow, undercurl = true }) -- Word that is recognized by the spellchecker as one that is used in another region
  set_hl('SpellRare', { sp = c.cyan, undercurl = true }) -- Word that is recognized by the spellchecker as one that is hardly ever used.
  set_hl('StatusLine', { fg = c.base02, bg = c.base1 }) -- Status line of current window.
  set_hl('StatusLineNC', { fg = c.base02, bg = c.base00 }) -- Status lines of not-current windows.
  set_hl(
    'TabLine',
    { fg = c.base0, bg = c.base02, sp = c.base0, underline = true }
  ) -- Tab pages line, not active tab page label.
  set_hl(
    'TabLineFill',
    { fg = c.base0, bg = c.base02, sp = c.base0, underline = true }
  ) -- Tab pages line, where there are no labels.
  set_hl(
    'TabLineSel',
    { fg = c.base2, bg = c.base01, sp = c.base0, underline = true }
  ) -- Tab pages line, active tab page label.
  set_hl('Title', { fg = c.orange, bold = true }) -- Titles for output from ":set all", ":autocmd" etc.
  set_hl('Visual', { bg = c.base02, standout = true }) -- Visual mode selection.
  set_hl('VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".
  set_hl('WarningMsg', { fg = c.warning, bold = true }) -- Warning messages.
  set_hl('Whitespace', { fg = c.base01 }) -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
  set_hl('WildMenu', { fg = c.base2, bg = c.base02 }) -- Current match in 'wildmenu' completion.
  set_hl('WinBar', { link = 'Pmenu' }) -- Window bar of current window.
  set_hl('WinBarNC', { link = 'WinBar' }) -- Window bar of not-current windows.
end
