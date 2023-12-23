return function(c, config)
  local utils = require('solarized.utils')
  local darken = require('solarized.utils.colors').darken
  local base04 = darken(c.base03, 10)
  local set_hl = utils.set_hl

  if config.transparent then
    set_hl('ColorColumn', { bg = c.base02 }) -- used for columns
  else
    set_hl('ColorColumn', { bg = base04 }) -- used for columns
  end

  set_hl('Conceal', { fg = c.blue }) -- placeholder characters
  set_hl('CurSearch', { fg = c.base2, bg = c.base02 }) -- highlight under cursor
  set_hl('Cursor', { fg = c.base03, bg = c.cyan }) -- character under cursor
  set_hl('lCursor', { link = 'Cursor' }) -- character under the cursor
  set_hl('CursorIM', { link = 'Cursor' }) -- like cursor, but IME mode
  set_hl('CursorColumn', { link = 'ColorColumn' }) -- screen-column at the cursor
  set_hl('CursorLine') -- screen-line at the cursor
  set_hl('Directory', { fg = c.orange }) -- directory names
  set_hl('DiffAdd', { fg = c.add }) -- Added line
  set_hl('DiffChange', { fg = c.change }) -- Changed line
  set_hl('DiffDelete', { fg = c.base03, bg = c.delete }) -- Deleted line
  set_hl('DiffText', { fg = c.blue, reverse = true }) -- Changed Text
  set_hl('EndOfBuffer', { fg = c.base03 }) -- Filler lines (~)
  set_hl('TermCursor', { link = 'Cursor' }) -- Cursor in a focused terminal
  set_hl('TermCursorNC', { fg = c.base03, bg = c.base0 }) -- Cursor in an unfocused terminal
  set_hl('ErrorMsg', { fg = c.error }) -- Error messages on the command line
  set_hl(
    'WinSeparator',
    { fg = c.cyan, bg = base04 },
    { transparent = config.transparent }
  ) -- Separators between window splits
  set_hl('Folded', { fg = c.base0, bg = c.base02 }) -- Line used for closed folds
  set_hl('FoldColumn', { fg = c.base0, bg = base04 }) -- 'foldcolumn'
  set_hl(
    'SignColumn',
    { fg = c.base0, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Column were signs are displayed
  set_hl(
    'IncSearch',
    { fg = c.base3, bg = base04, bold = true },
    { transparent = config.transparent }
  ) -- 'incsearch' highlighting, also for the text replaced
  set_hl('Substitute', { fg = c.orange, reverse = true }) -- :substitute replacement text highlight
  set_hl(
    'LineNr',
    { fg = c.base01, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Line number for ":number" and ":#" commands
  set_hl('LineNrAbove', { link = 'LineNr' }) -- Line number, above the cursor line
  set_hl('LineNrBelow', { link = 'LineNr' }) -- Line number, below the cursor
  set_hl(
    'CursorLineNr',
    { fg = c.base2, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Like LineNr when 'cursorline' is set
  set_hl('CursorLineFold', { link = 'FoldColumn' }) -- Like FoldColumn when 'cursorline' is set
  set_hl('CursorLineSign', { link = 'SignColumn' }) -- Like SignColumn when 'cursorline' is set
  set_hl('MatchParen', { fg = c.base2 }) -- Character under the cursor or just before it
  set_hl('ModeMsg', { link = 'Normal' }) -- 'showmode' message (e.g., "-- INSERT --")
  set_hl('MsgArea', { link = 'Normal' }) -- 'Area for messages and cmdline'
  set_hl('MsgSeparator', { link = 'Normal' }) -- Separator for scrolled messages msgsep.
  set_hl('MoreMsg', { fg = c.cyan }) -- more-prompt
  set_hl('NonText', { fg = c.base00 }) -- '@' at the end of the window
  set_hl(
    'Normal',
    { fg = c.base0, bg = c.base03 },
    { transparent = config.transparent }
  ) -- Normal text
  set_hl('NormalFloat', { fg = c.base0, bg = base04 }) -- Normal text in floating windows
  set_hl('FloatBorder', { link = 'WinSeparator' }) -- Border of floating windows.
  set_hl('FloatTitle', { fg = c.orange }) -- Title of float windows.
  set_hl('NormalNC', { link = 'Normal' }) -- Normal text in non-current windows.
  set_hl(
    'Pmenu',
    { fg = c.base0, bg = base04 },
    { transparent = config.transparent }
  ) -- Popup menu: Normal item
  set_hl('PmenuSel', { fg = c.base2 }) -- Popup menu: Selected item
  set_hl('PmenuKind', { link = 'Pmenu' }) -- Popup menu: Normal item kind
  set_hl('PmenuKindSel', { link = 'PmenuSel' }) -- Popup menu: Selected item kind
  set_hl('PmenuExtra', { link = 'Pmenu' }) -- Popup menu: Normal item extra text
  set_hl('PmenuExtraSel', { link = 'PmenuSel' }) -- Popup menu: Selected item extra text
  set_hl('PmenuSbar', { bg = base04 }) -- Popup menu: Scrollbar
  set_hl('PmenuThumb', { bg = c.base1 }) -- Popup menu: Thumb of the scrollbar
  set_hl('Question', { fg = c.cyan, bg = c.base03 }) -- hit-enter prompt and yes/no questions.
  set_hl('QuickFixLine', { fg = c.base0, bg = c.base03 }) -- Current quickfix item in the quickfix window
  set_hl('Search', { bg = c.base02 }) -- Last search pattern highlighting
  set_hl('SpecialKey', { fg = c.red }) -- Unprintable characters: Text displayed differently from what it really is.
  set_hl('SpellBad', { fg = c.error, sp = c.error, underline = true }) -- Word that is not recognized by the spellchecker.
  set_hl('SpellCap', { fg = c.hint, sp = c.hint, underline = true }) -- Word that should start with a capital
  set_hl('SpellLocal', { fg = c.info, sp = c.info, underline = true }) -- Word that is recognized by the spellchecker as one that is used in another region
  set_hl('SpellRare', { fg = c.warning, sp = c.warning, underline = true }) -- Word that is recognized by the spellchecker as one that is hardly ever used.
  set_hl('StatusLine', { fg = c.base1, bg = base04 }) -- Status line of current window.
  set_hl('StatusLineNC', { fg = c.base00, bg = base04 }) -- Status lines of not-current windows.
  set_hl('TabLine', { bg = base04 }) -- Tab pages line, not active tab page label.
  set_hl('TabLineFill', { fg = c.base0, bg = base04 }) -- Tab pages line, where there are no labels.
  set_hl('TabLineSel', { fg = c.base2, bg = c.base03 }) -- Tab pages line, active tab page label.
  set_hl('Title', { fg = c.orange }) -- Titles for output from ":set all", ":autocmd" etc.
  set_hl('Visual', { bg = c.base02 }) -- Visual mode selection.
  set_hl('VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".
  set_hl('WarningMsg', { fg = c.warning }) -- Warning messages.
  set_hl('Whitespace', { fg = c.base01 }) -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
  set_hl('WildMenu', { bg = c.base02 }) -- Current match in 'wildmenu' completion.
  set_hl('WinBar', { link = 'Pmenu' }) -- Window bar of current window.
  set_hl('WinBarNC', { link = 'WinBar' }) -- Window bar of not-current windows.
end
