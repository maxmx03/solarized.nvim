---@class solarized.highlights
---@field ColorColumn? table
---@field Conceal? table
---@field CurSearch? table
---@field Cursor? table
---@field lCursor? table
---@field CursorIM? table
---@field CursorColumn? table
---@field CursorLine? table
---@field Directory? table
---@field DiffAdd? table
---@field DiffChange? table
---@field DiffDelete? table
---@field DiffText? table
---@field EndOfBuffer? table
---@field TermCursor? table
---@field TermCursorNC? table
---@field ErrorMsg? table
---@field WinSeparator? table
---@field Folded? table
---@field FoldColumn? table
---@field SignColumn? table
---@field IncSearch? table
---@field Substitute? table
---@field LineNr? table
---@field LineNrAbove? table
---@field LineNrBelow? table
---@field CursorLineNr? table
---@field CursorLineFold? table
---@field CursorLineSign? table
---@field MatchParen? table
---@field ModeMsg? table
---@field MsgArea? table
---@field MsgSeparator? table
---@field MoreMsg? table
---@field NonText? table
---@field Normal? table
---@field NormalFloat? table
---@field FloatBorder? table
---@field FloatTitle? table
---@field NormalNC? table
---@field Pmenu? table
---@field PmenuSel? table
---@field PmenuKind? table
---@field PmenuKindSel? table
---@field PmenuExtra? table
---@field PmenuExtraSel? table
---@field PmenuSbar? table
---@field PmenuThumb? table
---@field Question? table
---@field QuickFixLine? table
---@field Search? table
---@field SpecialKey? table
---@field SpellBad? table
---@field SpellCap? table
---@field SpellLocal? table
---@field SpellRare? table
---@field StatusLine? table
---@field StatusLineNC? table
---@field TabLine? table
---@field TabLineFill? table
---@field TabLineSel? table
---@field Title? table
---@field Visual? table
---@field VisualNOS? table
---@field warningMsg? table
---@field Whitespace? table
---@field WildMenu? table
---@field WinBar? table
---@field WinBarNC? table
---@field Comment? table
---@field Constant? table
---@field String? table
---@field Character? table
---@field Number? table
---@field Boolean? table
---@field Float? table
---@field Identifier? table
---@field Function? table
---@field Statement? table
---@field Conditional? table
---@field Repeat? table
---@field Label? table
---@field Operator? table
---@field Keyword? table
---@field Exception? table
---@field PreProc? table
---@field Include? table
---@field Define? table
---@field Macro? table
---@field PreCondit? table
---@field Type? table
---@field StorageClass? table
---@field Structure? table
---@field Typedef? table
---@field Special? table
---@field SpecialChar? table
---@field Tag? table
---@field Delimiter? table
---@field SpecialComment? table
---@field Debug? table
---@field Underlined? table
---@field Ignore? table
---@field Error? table
---@field Todo? table
---@field Added? table
---@field Changed? table
---@field Removed? table
---@field DiagnosticError? table
---@field DiagnosticWarn? table
---@field DiagnosticInfo? table
---@field DiagnosticHint? table
---@field DiagnosticOk? table
---@field DiagnosticVirtualTextError? table
---@field DiagnosticVirtualTextWarn? table
---@field DiagnosticVirtualTextInfo? table
---@field DiagnosticVirtualTextHint? table
---@field DiagnosticVirtualTextOk? table
---@field DiagnosticUnderlineError? table
---@field DiagnosticUnderlineWarn? table
---@field DiagnosticUnderlineInfo? table
---@field DiagnosticUnderlineHint? table
---@field DiagnosticUnderlineOk? table
---@field LspReferenceText? table
---@field LspReferenceRead? table
---@field LspReferenceWrite? table
---@field LspInlayHint? table
---@field NavicText? table
---@field NavicSeparator? table
---@field NavicIconsMethod? table
---@field NavicIconsFunction? table
---@field NavicIconsField? table
---@field NavicIconsVariable? table
---@field NavicIconsClass? table
---@field NavicIconsInterface? table
---@field NavicIconsModule? table
---@field NavicIconsNamespace? table
---@field NavicIconsProperty? table
---@field NavicIconsUnit? table
---@field NavicIconsEnum? table
---@field NavicIconsKeyword? table
---@field NavicIconsSnippet? table
---@field NavicIconsColor? table
---@field NavicIconsFile? table
---@field NavicIconsReference? table
---@field NavicIconsFolder? table
---@field NavicIconsEnumMember? table
---@field NavicIconsConstant? table
---@field NavicIconsStruct? table
---@field NavicIconsEvent? table
---@field NavicIconsOperator? table
---@field NavicIconsTypeParameter? table
---@field CmpItemKindText? table
---@field CmpItemKindMethod? table
---@field CmpItemKindFunction? table
---@field CmpItemKindField? table
---@field CmpItemKindVariable? table
---@field CmpItemKindClass? table
---@field CmpItemKindInterface? table
---@field CmpItemKindModule? table
---@field CmpItemKindProperty? table
---@field CmpItemKindUnit? table
---@field CmpItemKindEnum? table
---@field CmpItemKindKeyword? table
---@field CmpItemKindSnippet? table
---@field CmpItemKindColor? table
---@field CmpItemKindFile? table
---@field CmpItemKindReference? table
---@field CmpItemKindFolder? table
---@field CmpItemKindEnumMember? table
---@field CmpItemKindConstant? table
---@field CmpItemKindStruct? table
---@field CmpItemKindEvent? table
---@field CmpItemKindOperator? table
---@field CmpItemKindTypeParameter? table
---@field IblIndent? table
---@field IblScope? table
---@field NeoTreeNormal? table
---@field NeoTreeNormalNC? table
---@field NeoTreeDotFile? table
---@field NeoTreeFileNameOpened? table
---@field NeoTreeFloatBorder? table
---@field NeoTreeFloatTitle? table
---@field NeoTreeGitAdded? table
---@field NeoTreeGitConflict? table
---@field NeoTreeGitDeleted? table
---@field NeoTreeGitIgnored? table
---@field NeoTreeGitModified? table
---@field NeoTreeGitUnstaged? table
---@field NeoTreeGitUntracked? table
---@field NeoTreeGitStaged? table
---@field NvimTreeSymlink? table
---@field NvimTreeSymlinkIcon? table
---@field NvimTreeFolderName? table
---@field NvimTreeRootFolder? table
---@field NvimTreeFolderIcon? table
---@field NvimTreeEmptyFolderName? table
---@field NvimTreeExecFile? table
---@field NvimTreeOpenedFile? table
---@field NvimTreeModifiedFile? table
---@field NvimTreeSpecialFile? table
---@field NvimTreeIndentMarker? table
---@field NvimTreeGitDirty? table
---@field NvimTreeGitStaged? table
---@field NvimTreeGitMerge? table
---@field NvimTreeGitRenamed? table
---@field NvimTreeGitNew? table
---@field NvimTreeGitDeleted? table
---@field NvimTreeNormal? table
---@field NvimTreeNormalFloat? table
---@field NvimTreeEndOfBuffer? table
---@field NvimTreeWinSeparator? table
---@field WhichKeyNormal? table
---@field WhichKey? table
---@field WhichKeyDesc? table
---@field WhichKeySeparator? table
---@field WhichKeyGroup? table
---@field DashboardHeader? table
---@field DashboardFooter? table
---@field DashboardDesc? table
---@field DashboardKey? table
---@field DashboardIcon? table
---@field DashboardShotCut? table
---@field GitSignsAdd? table
---@field GitSignsChange? table
---@field GitSignsDelete? table
---@field TelescopeSelection? table
---@field TelescopeSelectionCaret? table
---@field TelescopeMultiIcon? table
---@field TelescopeNormal? table
---@field TelescopePreviewNormal? table
---@field TelescopePromptNormal? table
---@field TelescopeResultsNormal? table
---@field TelescopeBorder? table
---@field TelescopePromptBorder? table
---@field TelescopeResultsBorder? table
---@field TelescopePreviewBorder? table
---@field TelescopeTitle? table
---@field TelescopePromptTitle? table
---@field TelescopeResultsTitle? table
---@field TelescopePreviewTitle? table
---@field TelescopeMatching? table
---@field TelescopePreviewMatch? table
---@field TelescopePromptCounter? table
---@field TelescopePromptPrefix? table
---@field NoiceFormatProgressTodo? table
---@field NoiceFormatProgressDone? table
---@field NoiceLspProgressSpinner? table
---@field NoiceLspProgressClient? table
---@field NoiceLspProgressTitle? table
---@field HopNextKey? table
---@field HopNextKey1? table
---@field HopUnmatched? table
---@field MiniStatuslineModeNormal? table
---@field MiniStatuslineModeInsert? table
---@field MiniStatuslineModeVisual? table
---@field MiniStatuslineModeReplace? table
---@field MiniStatuslineModeCommand? table
---@field MinistatusLineFileName? table
---@field MiniStatuslineDevinfo? table
---@field MiniStatuslineFileinfo? table
---@field MiniStatuslineInactive? table
---@field MiniTablineCurrent? table
---@field MiniTablineVisible? table
---@field MiniTablineHidden? table
---@field MiniTablineModifiedCurrent? table
---@field MiniTablineModifiedVisible? table
---@field MiniTablineModifiedHidden? table
---@field MiniTablineFill? table
---@field MiniTablineTabpagesection? table
---@field MiniStarterCurrent? table
---@field MiniStarterHeader? table
---@field MiniStarterFooter? table
---@field MiniStarterItem? table
---@field MiniStarterItemBullet? table
---@field MiniStarterItemPrefix? table
---@field MiniStarterSection? table
---@field MiniStarterQuery? table
---@field MiniCursorword? table
---@field NotifyBackground? table
---@field NotifyERRORBorder? table
---@field NotifyWARNBorder? table
---@field NotifyINFOBorder? table
---@field NotifyDEBUGBorder? table
---@field NotifyTRACEBorder? table
---@field NotifyERRORIcon? table
---@field NotifyWARNIcon? table
---@field NotifyINFOIcon? table
---@field NotifyDEBUGIcon? table
---@field NotifyTRACEIcon? table
---@field NotifyERRORTitle? table
---@field NotifyWARNTitle? table
---@field NotifyINFOTitle? table
---@field NotifyDEBUGTitle? table
---@field NotifyTRACETitle? table
---@field NotifyERRORBody? table
---@field NotifyWARNBody? table
---@field NotifyINFOBody? table
---@field NotifyDEBUGBody? table
---@field NotifyTRACEBody? table
---@field RainbowDelimiterRed? table
---@field RainbowDelimiteYellow? table
---@field RainbowDelimiterBlue? table
---@field RainbowDelimiterOrange? table
---@field RainbowDelimiterGreen? table
---@field RainbowDelimiterViolet? table
---@field RainbowDelimiterCyan? table
---@field BufferLineFill? table
---@field BufferLineBufferSelected? table
---@field BufferLineSeparator? table
---@field BufferLineSeparatorSelected? table
---@field BufferLineSeparatorVisible? table
---@field LazyH1? table
---@field LazyButton? table
---@field LazyButtonActive? table
---@field LazyReasonStart? table
---@field LazyReasonEvent? table
---@field LazyNormal? table

local M = {}

local function nvim_get_hl(opts)
  local hl = vim.api.nvim_get_hl(0, opts)

  if hl.link then
    return nvim_get_hl { name = hl.link }
  end

  return hl
end

---@class solarized.nvim_set_hl.config
---@field transparent? boolean
---@field styles? vim.api.keyset.highlight

---@param group_name string
---@param group_val vim.api.keyset.highlight
---@param config? solarized.nvim_set_hl.config
local nvim_set_hl = function(group_name, group_val, config)
  local val = { fg = 'NONE', bg = 'NONE' }

  if not group_val.link then
    if config and config.transparent then
      group_val.bg = 'NONE'
    end

    if config and config.styles then
      group_val = vim.tbl_extend('force', group_val, config.styles)
    end

    val = vim.tbl_extend('force', val, group_val)
    vim.api.nvim_set_hl(0, group_name, val)
  else
    vim.api.nvim_set_hl(0, group_name, group_val)
  end
end

---@param colors solarized.palette
---@param config solarized.config
M.set_highlight = function(colors, config)
  if config.on_colors then
    local color = require 'solarized.color'
    colors = vim.tbl_extend('force', colors, config.on_colors(colors, color))
  end
  -- EDITOR :h highlight-groups
  nvim_set_hl('ColorColumn', { bg = colors.base04 })
  nvim_set_hl('Conceal', { fg = colors.blue })
  nvim_set_hl('CurSearch', { link = 'IncSearch' })
  nvim_set_hl('Cursor', { fg = colors.base03, bg = colors.base0 })
  nvim_set_hl('lCursor', { link = 'Cursor' })
  nvim_set_hl('CursorIM', { link = 'Cursor' })
  nvim_set_hl('CursorColumn', { link = 'ColorColumn' })
  nvim_set_hl('CursorLine', { bg = colors.base02 })
  nvim_set_hl('Directory', { fg = colors.blue })
  nvim_set_hl('DiffAdd', { fg = colors.git_add })
  nvim_set_hl('DiffChange', { fg = colors.git_modify })
  nvim_set_hl('DiffDelete', { fg = colors.git_delete, reverse = true })
  nvim_set_hl('DiffText', { fg = colors.cyan, reverse = true })
  nvim_set_hl('EndOfBuffer', { fg = colors.base03 })
  nvim_set_hl('TermCursor', { link = 'Cursor' })
  nvim_set_hl('TermCursorNC', { fg = colors.base03, bg = colors.base0 })
  nvim_set_hl('ErrorMsg', { fg = colors.diag_error })
  nvim_set_hl(
    'WinSeparator',
    { fg = colors.cyan, bg = colors.base04 },
    { transparent = config.transparent }
  )
  nvim_set_hl('Folded', { fg = colors.base0, bg = colors.base02 })
  nvim_set_hl('FoldColumn', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('SignColumn', { link = 'Normal' })
  nvim_set_hl(
    'IncSearch',
    { fg = colors.cyan, bg = colors.mix_cyan, bold = true },
    { transparent = config.transparent }
  )
  nvim_set_hl('Substitute', { link = 'IncSearch' })
  nvim_set_hl(
    'LineNr',
    { fg = colors.base01, bg = colors.base02 },
    { transparent = config.transparent }
  )
  nvim_set_hl('LineNrAbove', { link = 'LineNr' })
  nvim_set_hl('LineNrBelow', { link = 'LineNr' })
  nvim_set_hl(
    'CursorLineNr',
    { fg = colors.base1, bg = colors.base02 },
    { transparent = config.transparent }
  )
  nvim_set_hl('CursorLineFold', { link = 'FoldColumn' })
  nvim_set_hl('CursorLineSign', { link = 'SignColumn' })
  nvim_set_hl('MatchParen', { fg = colors.cyan })
  nvim_set_hl('ModeMsg', { fg = colors.blue })
  nvim_set_hl('MsgArea', { link = 'Normal' })
  nvim_set_hl('MsgSeparator', { link = 'Normal' })
  nvim_set_hl('MoreMsg', { link = 'ModeMsg' })
  nvim_set_hl('NonText', { fg = colors.base01 })
  nvim_set_hl(
    'Normal',
    { fg = colors.base0, bg = colors.base03 },
    { transparent = config.transparent }
  )
  nvim_set_hl(
    'NormalFloat',
    { fg = colors.base0, bg = colors.base04 },
    { transparent = config.transparent }
  )
  nvim_set_hl('FloatBorder', { link = 'WinSeparator' })
  nvim_set_hl('FloatTitle', { fg = colors.blue })
  nvim_set_hl('NormalNC', { link = 'Normal' })
  nvim_set_hl(
    'Pmenu',
    { fg = colors.base0, bg = colors.base04 },
    { transparent = config.transparent }
  )
  nvim_set_hl('PmenuSel', { fg = colors.blue, reverse = true })
  nvim_set_hl('PmenuKind', { link = 'Pmenu' })
  nvim_set_hl('PmenuKindSel', { link = 'PmenuSel' })
  nvim_set_hl('PmenuExtra', { link = 'Pmenu' })
  nvim_set_hl('PmenuExtraSel', { link = 'PmenuSel' })
  nvim_set_hl('PmenuSbar', { bg = colors.base04 })
  nvim_set_hl('PmenuThumb', { bg = colors.blue })
  nvim_set_hl('Question', { fg = colors.diag_info })
  nvim_set_hl('QuickFixLine', { fg = colors.base0, bg = colors.base03 })
  nvim_set_hl('Search', { fg = colors.violet, bg = colors.mix_violet })
  nvim_set_hl('SpecialKey', { link = 'NonText' })
  nvim_set_hl('SpellBad', { underline = true, strikethrough = true })
  nvim_set_hl('SpellCap', { fg = colors.diag_hint })
  nvim_set_hl('SpellLocal', { link = 'SpellCap' })
  nvim_set_hl('SpellRare', { fg = colors.diag_warning })
  nvim_set_hl('StatusLine', { fg = colors.base1, bg = colors.base04 })
  nvim_set_hl('StatusLineNC', { fg = colors.base01, bg = colors.base04 })
  nvim_set_hl('TabLine', { fg = colors.base01, bg = colors.base04 })
  nvim_set_hl('TabLineFill', { fg = colors.base0, bg = colors.base04 })
  nvim_set_hl('TabLineSel', { fg = colors.base0, bg = colors.base03 })
  nvim_set_hl('Title', { fg = colors.blue })
  nvim_set_hl('Visual', { bg = colors.mix_cyan })
  nvim_set_hl('VisualNOS', { link = 'Visual' })
  nvim_set_hl('warningMsg', { fg = colors.diag_warning })
  nvim_set_hl('Whitespace', { fg = colors.base01 })
  nvim_set_hl('WildMenu', { fg = colors.base02 })
  nvim_set_hl('WinBar', { link = 'Pmenu' })
  nvim_set_hl('WinBarNC', { link = 'WinBar' }) -- SYNTAX :h group-name
  nvim_set_hl('Comment', { fg = colors.base01 })
  nvim_set_hl('Constant', { fg = colors.violet })
  nvim_set_hl('String', { fg = colors.cyan })
  nvim_set_hl('Character', { link = 'String' })
  nvim_set_hl('Number', { link = 'Constant' })
  nvim_set_hl('Boolean', { link = 'Constant' })
  nvim_set_hl('Float', { link = 'Constant' })
  nvim_set_hl('Identifier', { fg = colors.blue })
  nvim_set_hl('Function', { link = 'Identifier' })
  nvim_set_hl('Statement', { fg = colors.green })
  nvim_set_hl('Conditional', { link = 'Statement' })
  nvim_set_hl('Repeat', { link = 'Statement' })
  nvim_set_hl('Label', { link = 'Statement' })
  nvim_set_hl('Operator', { link = 'Statement' })
  nvim_set_hl('Keyword', { fg = colors.base1, bold = true })
  nvim_set_hl('Exception', { link = 'Statement' })
  nvim_set_hl('PreProc', { link = 'Statement' })
  nvim_set_hl('Include', { link = 'Statement' })
  nvim_set_hl('Define', { link = 'Statement' })
  nvim_set_hl('Macro', { link = 'Statement' })
  nvim_set_hl('PreCondit', { link = 'Statement' })
  nvim_set_hl('Type', { fg = colors.orange })
  nvim_set_hl('StorageClass', { link = 'Statement' })
  nvim_set_hl('Structure', { link = 'Type' })
  nvim_set_hl('Typedef', { link = 'Statement' })
  nvim_set_hl('Special', { fg = colors.violet })
  nvim_set_hl('SpecialChar', { fg = colors.violet })
  nvim_set_hl('Tag', { fg = colors.blue })
  nvim_set_hl('Delimiter', { fg = colors.base01 })
  nvim_set_hl('SpecialComment', { link = 'Statement' })
  nvim_set_hl('Debug', { fg = colors.magenta })
  nvim_set_hl('Underlined', { fg = colors.magenta, underline = true })
  nvim_set_hl('Ignore', {})
  nvim_set_hl('Error', { fg = colors.diag_error, bold = true })
  nvim_set_hl('Todo', { fg = colors.blue })
  nvim_set_hl('Added', { fg = colors.git_add })
  nvim_set_hl('Changed', { fg = colors.git_modify })
  nvim_set_hl('Removed', { fg = colors.git_delete })

  -- PLUGINS
  if config.plugins['nvim-treesitter'] then
    nvim_set_hl('@variable', { link = 'Identifier' })
    nvim_set_hl('@variable.builtin', { link = 'Constant' })
    nvim_set_hl('@variable.parameter', { fg = colors.blue, italic = true })
    nvim_set_hl('@variable.member', { link = 'Identifier' })
    nvim_set_hl('@constant', { link = 'Constant' })
    nvim_set_hl('@constant.builtin', { link = 'Constant' })
    nvim_set_hl('@constant.macro', { link = 'Constant' })
    nvim_set_hl('@module', { link = 'Identifier' })
    nvim_set_hl('@module.builtin', { link = 'Constant' })
    nvim_set_hl('@label', { link = 'Statement' })
    nvim_set_hl('@string', { link = 'String' })
    nvim_set_hl('@string.documentation', { link = 'Statement' })
    nvim_set_hl('@string.regexp', { fg = colors.magenta })
    nvim_set_hl('@string.escape', { link = 'Statement' })
    nvim_set_hl('@string.special', { link = 'Special' })
    nvim_set_hl('@string.special.symbol', { link = 'Identifier' })
    nvim_set_hl('@string.special.url', { link = 'Underlined' })
    nvim_set_hl('@character', { link = 'Constant' })
    nvim_set_hl('@character.special', { link = 'Constant' })
    nvim_set_hl('@character.printf', { link = 'Keyword' })
    nvim_set_hl('@type', { link = 'Type' })
    nvim_set_hl('@type.builtin', { link = 'Keyword' })
    nvim_set_hl('@type.definition', { link = 'Type' })
    nvim_set_hl('@type.qualifier', { link = 'Type' })
    nvim_set_hl('@function', { link = 'Function' })
    nvim_set_hl('@function.builtin', { fg = colors.yellow })
    nvim_set_hl('@function.call', { link = 'Function' })
    nvim_set_hl('@function.macro', { link = 'Function' })
    nvim_set_hl('@function.method', { link = 'Function' })
    nvim_set_hl('@function.method.call', { link = 'Function' })
    nvim_set_hl('@constructor', { link = 'Type' })
    nvim_set_hl('@constructor.lua', { link = 'Delimiter' })
    nvim_set_hl('@operator', { link = 'Statement' })
    nvim_set_hl('@keyword', { link = 'Keyword' })
    nvim_set_hl('@keyword.coroutine', { link = 'Statement' })
    nvim_set_hl('@keyword.function', { link = 'Statement' })
    nvim_set_hl('@keyword.operator', { link = 'Statement' })
    nvim_set_hl('@keyword.import', { link = 'Keyword' })
    nvim_set_hl('@keyword.repeat', { link = 'Statement' })
    nvim_set_hl('@keyword.return', { link = 'Keyword' })
    nvim_set_hl('@keyword.debug', { link = 'Keyword' })
    nvim_set_hl('@keyword.exception', { link = 'Statement' })
    nvim_set_hl('@keyword.conditional', { link = 'Statement' })
    nvim_set_hl('@keyword.conditional.ternary', { link = 'Statement' })
    nvim_set_hl('@keyword.directive', { link = 'Statement' })
    nvim_set_hl('@keyword.directive.define', { link = 'Statement' })
    nvim_set_hl('@punctuation.delimiter', { link = 'Delimiter' })
    nvim_set_hl('@punctuation.bracket', { link = 'Delimiter' })
    nvim_set_hl('@punctuation.special', { link = 'Keyword' })
    nvim_set_hl('@comment', { link = 'Comment' })
    nvim_set_hl('@comment.documentation', { link = 'Comment' })
    nvim_set_hl('@comment.error', { fg = colors.diag_error })
    nvim_set_hl('@comment.warning', { fg = colors.diag_warning })
    nvim_set_hl('@comment.todo', { link = 'Todo' })
    nvim_set_hl('@comment.note', { fg = colors.diag_hint })
    nvim_set_hl('@markup.strong', { fg = colors.magenta, bold = true })
    nvim_set_hl('@markup.italic', { link = 'Underlined' })
    nvim_set_hl('@markup.strikethrough', { fg = colors.base01, strikethrough = true })
    nvim_set_hl('@markup.underline', { link = 'Underlined' })
    nvim_set_hl('@markup.heading', { fg = colors.blue, bold = true })
    nvim_set_hl('@markup.heading.1', { fg = colors.blue })
    nvim_set_hl('@markup.heading.2', { fg = colors.violet })
    nvim_set_hl('@markup.heading.3', { fg = colors.yellow })
    nvim_set_hl('@markup.heading.4', { fg = colors.orange })
    nvim_set_hl('@markup.heading.5', { fg = colors.red })
    nvim_set_hl('@markup.heading.6', { fg = colors.magenta })
    nvim_set_hl('@markup.quote', { fg = colors.green })
    nvim_set_hl('@markup.math', { fg = colors.violet })
    nvim_set_hl('@markup.environment', { link = 'Comment' })
    nvim_set_hl('@markup.link', { link = 'Underlined' })
    nvim_set_hl('@markup.link.label', { link = 'Constant' })
    nvim_set_hl('@markup.link.url', { link = 'Underlined' })
    nvim_set_hl('@markup.raw', { fg = colors.cyan })
    nvim_set_hl('@markup.raw.block', { fg = colors.base0 })
    nvim_set_hl('@markup.list', { fg = colors.orange })
    nvim_set_hl('@markup.list.checked', { fg = colors.green })
    nvim_set_hl('@markup.list.unchecked', { fg = colors.base01 })
    nvim_set_hl('@diff.plus', { fg = colors.git_add })
    nvim_set_hl('@diff.minus', { fg = colors.git_delete })
    nvim_set_hl('@diff.delta', { fg = colors.git_modify })
    nvim_set_hl('@tag', { fg = colors.blue })
    nvim_set_hl('@tag.attribute', { fg = colors.base1 })
    nvim_set_hl('@tag.delimiter', { link = 'Delimiter' })
  end

  if config.plugins['nvim-lspconfig'] then
    nvim_set_hl('@lsp.type.class', { link = 'Type' })
    nvim_set_hl('@lsp.type.decorator', { link = 'Function' })
    nvim_set_hl('@lsp.type.enum', { link = 'Type' })
    nvim_set_hl('@lsp.type.enumMember', { link = 'Type' })
    nvim_set_hl('@lsp.type.interface', { link = 'Type' })
    nvim_set_hl('@lsp.type.macro', { link = '@function.builtin' })
    nvim_set_hl('@lsp.type.namespace', { link = 'Type' })
    nvim_set_hl('@lsp.type.parameter', { link = '@parameter' })
    nvim_set_hl('@lsp.type.property', { link = 'Identifier' })
    nvim_set_hl('@lsp.type.struct', { link = 'Type' })
    nvim_set_hl('@lsp.type.type', { link = 'Type' })
    nvim_set_hl('@lsp.type.typeParameter', { link = 'Type' })
    nvim_set_hl('@lsp.type.variable', { link = 'Identifier' })
    nvim_set_hl('@lsp.typemod.variable.defaultLibrary', { link = 'Constant' })
    nvim_set_hl('@lsp.typemod.variable.readonly', { link = 'Constant' })
    nvim_set_hl('@lsp.typemod.variable.global', { link = 'Constant' })
    nvim_set_hl('@lsp.typemod.keyword.documentation', { link = 'Keyword' })
    nvim_set_hl('@lsp.typemod.class.documentation', { link = 'Type' })
    nvim_set_hl('@lsp.typemod.property.readonly', { link = 'Constant' })
    nvim_set_hl('DiagnosticError', { fg = colors.diag_error })
    nvim_set_hl('DiagnosticWarn', { fg = colors.diag_warning })
    nvim_set_hl('DiagnosticInfo', { fg = colors.diag_info })
    nvim_set_hl('DiagnosticHint', { fg = colors.diag_hint })
    nvim_set_hl('DiagnosticOk', { fg = colors.diag_ok })
    nvim_set_hl('DiagnosticVirtualTextError', { fg = colors.diag_error, bg = colors.mix_red })
    nvim_set_hl('DiagnosticVirtualTextWarn', { fg = colors.diag_warning, bg = colors.mix_yellow })
    nvim_set_hl('DiagnosticVirtualTextInfo', { fg = colors.diag_info, bg = colors.mix_violet })
    nvim_set_hl('DiagnosticVirtualTextHint', { fg = colors.diag_hint, bg = colors.mix_violet })
    nvim_set_hl('DiagnosticVirtualTextOk', { fg = colors.diag_ok, bg = colors.mix_green })
    nvim_set_hl('DiagnosticUnderlineError', { fg = colors.diag_error, underline = true })
    nvim_set_hl('DiagnosticUnderlineWarn', { fg = colors.diag_warning, underline = true })
    nvim_set_hl('DiagnosticUnderlineInfo', { fg = colors.diag_info, underline = true })
    nvim_set_hl('DiagnosticUnderlineHint', { fg = colors.diag_hint, underline = true })
    nvim_set_hl('DiagnosticUnderlineOk', { fg = colors.diag_ok, underline = true })
    nvim_set_hl('LspReferenceText', { link = 'Visual' })
    nvim_set_hl('LspReferenceRead', { link = 'Visual' })
    nvim_set_hl('LspReferenceWrite', { link = 'Visual' })
    nvim_set_hl('LspInlayHint', { fg = colors.base01 })
  end

  if config.plugins['nvim-navic'] then
    nvim_set_hl('NavicText', { fg = colors.base0 })
    nvim_set_hl('NavicSeparator', { link = 'Keyword' })
    nvim_set_hl('NavicIconsMethod', { link = 'Function' })
    nvim_set_hl('NavicIconsFunction', { link = 'Function' })
    nvim_set_hl('NavicIconsField', { link = 'Identifier' })
    nvim_set_hl('NavicIconsVariable', { link = 'Identifier' })
    nvim_set_hl('NavicIconsClass', { link = 'Type' })
    nvim_set_hl('NavicIconsInterface', { link = 'Type' })
    nvim_set_hl('NavicIconsModule', { link = 'Type' })
    nvim_set_hl('NavicIconsNamespace', { link = 'Type' })
    nvim_set_hl('NavicIconsProperty', { link = 'Identifier' })
    nvim_set_hl('NavicIconsUnit', { link = 'Number' })
    nvim_set_hl('NavicIconsEnum', { link = 'Type' })
    nvim_set_hl('NavicIconsKeyword', { link = 'Keyword' })
    nvim_set_hl('NavicIconsSnippet', { link = 'Tag' })
    nvim_set_hl('NavicIconsColor', { fg = colors.orange })
    nvim_set_hl('NavicIconsFile', { link = 'Identifier' })
    nvim_set_hl('NavicIconsReference', { link = 'Underlined' })
    nvim_set_hl('NavicIconsFolder', { link = 'Directory' })
    nvim_set_hl('NavicIconsEnumMember', { link = 'Constant' })
    nvim_set_hl('NavicIconsConstant', { link = 'Constant' })
    nvim_set_hl('NavicIconsStruct', { link = 'Identifier' })
    nvim_set_hl('NavicIconsEvent', { link = 'Function' })
    nvim_set_hl('NavicIconsOperator', { link = 'Operator' })
    nvim_set_hl('NavicIconsTypeParameter', { link = 'Type' })
  end

  if config.plugins['nvim-cmp'] then
    nvim_set_hl('CmpItemKindText', { link = 'String' })
    nvim_set_hl('CmpItemKindMethod', { link = 'Function' })
    nvim_set_hl('CmpItemKindFunction', { link = 'Function' })
    nvim_set_hl('CmpItemKindField', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindVariable', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindClass', { link = 'Type' })
    nvim_set_hl('CmpItemKindInterface', { link = 'Type' })
    nvim_set_hl('CmpItemKindModule', { link = 'Type' })
    nvim_set_hl('CmpItemKindProperty', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindUnit', { link = 'Number' })
    nvim_set_hl('CmpItemKindEnum', { link = 'Type' })
    nvim_set_hl('CmpItemKindKeyword', { link = 'Keyword' })
    nvim_set_hl('CmpItemKindSnippet', { link = 'Tag' })
    nvim_set_hl('CmpItemKindColor', { fg = colors.orange })
    nvim_set_hl('CmpItemKindFile', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindReference', { link = 'Underlined' })
    nvim_set_hl('CmpItemKindFolder', { link = 'Directory' })
    nvim_set_hl('CmpItemKindEnumMember', { link = 'Constant' })
    nvim_set_hl('CmpItemKindConstant', { link = 'Constant' })
    nvim_set_hl('CmpItemKindStruct', { link = 'Identifier' })
    nvim_set_hl('CmpItemKindEvent', { link = 'Function' })
    nvim_set_hl('CmpItemKindOperator', { link = 'Operator' })
    nvim_set_hl('CmpItemKindTypeParameter', { link = 'Type' })
  end

  if config.plugins['indent-blankline.nvim'] then
    nvim_set_hl('IblIndent', { fg = colors.base01, nocombine = true })
    nvim_set_hl('IblScope', { fg = colors.base0, nocombine = true })
  end

  if config.plugins['neo-tree.nvim'] then
    nvim_set_hl(
      'NeoTreeNormal',
      { fg = colors.base1, bg = colors.base04 },
      { transparent = config.transparent }
    )
    nvim_set_hl('NeoTreeNormalNC', { link = 'NeoTreeNormal' })
    nvim_set_hl('NeoTreeDotFile', { fg = colors.base01 })
    nvim_set_hl('NeoTreeGitIgnored', { link = 'NeoTreeDotFile' })
    nvim_set_hl('NeoTreeFileStats', { link = 'NeoTreeDotFile' })
    nvim_set_hl('NeoTreeDimText', { link = 'NeoTreeDotFile' })
    nvim_set_hl('NeoTreeFileNameOpened', { link = 'Directory' })
    nvim_set_hl('NeoTreeFloatBorder', { link = 'WinSeparator' })
    nvim_set_hl('NeoTreeFloatTitle', { link = 'Title' })
    nvim_set_hl('NeoTreeGitAdded', { fg = colors.git_add })
    nvim_set_hl('NeoTreeGitConflict', { fg = colors.git_modify })
    nvim_set_hl('NeoTreeGitDeleted', { fg = colors.git_delete })
    nvim_set_hl('NeoTreeGitModified', { fg = colors.git_modify })
    nvim_set_hl('NeoTreeGitUnstaged', { fg = colors.git_modify })
    nvim_set_hl('NeoTreeGitUntracked', { fg = colors.git_modify })
    nvim_set_hl('NeoTreeGitStaged', { fg = colors.git_add })
  end

  if config.plugins['nvim-tree.lua'] then
    nvim_set_hl('NvimTreeSymlink', { link = 'Underlined' })
    nvim_set_hl('NvimTreeSymlinkIcon', { link = 'Directory' })
    nvim_set_hl('NvimTreeFolderName', { fg = colors.base0 })
    nvim_set_hl('NvimTreeRootFolder', { link = 'Title' })
    nvim_set_hl('NvimTreeFolderIcon', { link = 'Directory' })
    nvim_set_hl('NvimTreeEmptyFolderName', { fg = colors.base0 })
    nvim_set_hl('NvimTreeExecFile', { link = 'Function' })
    nvim_set_hl('NvimTreeOpenedFile', { fg = colors.blue, bold = true })
    nvim_set_hl('NvimTreeModifiedFile', { fg = colors.git_modify })
    nvim_set_hl('NvimTreeSpecialFile', { link = 'Special' })
    nvim_set_hl('NvimTreeIndentMarker', { fg = colors.shade_violet })
    nvim_set_hl('NvimTreeGitDirty', { fg = colors.git_modify })
    nvim_set_hl('NvimTreeGitStaged', { fg = colors.git_add })
    nvim_set_hl('NvimTreeGitMerge', { fg = colors.git_modify })
    nvim_set_hl('NvimTreeGitRenamed', { fg = colors.git_modify })
    nvim_set_hl('NvimTreeGitNew', { fg = colors.git_add })
    nvim_set_hl('NvimTreeGitDeleted', { fg = colors.git_delete })
    nvim_set_hl(
      'NvimTreeNormal',
      { fg = colors.base1, bg = colors.base04 },
      { transparent = config.transparent }
    )
    nvim_set_hl('NvimTreeNormalFloat', { link = 'NvimTreeNormal' })
    nvim_set_hl('NvimTreeEndOfBuffer', { fg = colors.base04 })
    nvim_set_hl('NvimTreeWinSeparator', { link = 'WinSeparator' })
  end

  if config.plugins['which-key.nvim'] then
    nvim_set_hl('WhichKeyNormal', { link = 'NormalFloat' })
    nvim_set_hl('WhichKey', { link = 'Function' })
    nvim_set_hl('WhichKeyDesc', { fg = colors.base1 })
    nvim_set_hl('WhichKeySeparator', { link = 'Keyword' })
    nvim_set_hl('WhichKeyGroup', { link = 'Type' })
  end

  if config.plugins['dashboard-nvim'] then
    nvim_set_hl('DashboardHeader', { fg = colors.base01 })
    nvim_set_hl('DashboardFooter', { fg = colors.violet })
    nvim_set_hl('DashboardDesc', { link = 'Directory' })
    nvim_set_hl('DashboardKey', { link = 'Keyword' })
    nvim_set_hl('DashboardIcon', { link = 'Directory' })
    nvim_set_hl('DashboardShotCut', { fg = colors.base0 })
  end

  if config.plugins['gitsigns.nvim'] then
    nvim_set_hl('GitSignsAdd', { fg = colors.git_add })
    nvim_set_hl('GitSignsChange', { fg = colors.git_modify })
    nvim_set_hl('GitSignsDelete', { fg = colors.git_delete })
  end

  if config.plugins['telescope.nvim'] then
    nvim_set_hl('TelescopeSelection', { fg = colors.base0 })
    nvim_set_hl('TelescopeSelectionCaret', { fg = colors.blue })
    nvim_set_hl('TelescopeMultiIcon', { fg = colors.blue })
    nvim_set_hl(
      'TelescopeNormal',
      { fg = colors.base0, bg = colors.base04 },
      { transparent = config.transparent }
    )
    nvim_set_hl('TelescopePreviewNormal', { link = 'TelescopeNormal' })
    nvim_set_hl('TelescopePromptNormal', { link = 'TelescopeNormal' })
    nvim_set_hl('TelescopeResultsNormal', { link = 'TelescopeNormal' })
    nvim_set_hl('TelescopeBorder', { link = 'WinSeparator' }, { transparent = config.transparent })
    nvim_set_hl('TelescopePromptBorder', { link = 'TelescopeBorder' })
    nvim_set_hl('TelescopeResultsBorder', { link = 'TelescopeBorder' })
    nvim_set_hl('TelescopePreviewBorder', { link = 'TelescopeBorder' })
    nvim_set_hl('TelescopeTitle', { fg = colors.blue, bg = colors.mix_blue })
    nvim_set_hl('TelescopePromptTitle', { link = 'TelescopeTitle' })
    nvim_set_hl('TelescopeResultsTitle', { link = 'TelescopeTitle' })
    nvim_set_hl('TelescopePreviewTitle', { link = 'TelescopeTitle' })
    nvim_set_hl('TelescopeMatching', { link = 'IncSearch' })
    nvim_set_hl('TelescopePreviewMatch', { link = 'TelescopeMatching' })
    nvim_set_hl('TelescopePromptCounter', { link = 'NonText' })
    nvim_set_hl('TelescopePromptPrefix', { fg = colors.orange })
  end

  if config.plugins['noice.nvim'] then
    nvim_set_hl('NoiceFormatProgressTodo', { fg = colors.diag_ok, bg = colors.mix_green })
    nvim_set_hl('NoiceFormatProgressDone', { fg = colors.diag_ok, reverse = true })
    nvim_set_hl('NoiceLspProgressSpinner', { fg = colors.diag_ok })
    nvim_set_hl('NoiceLspProgressClient', { fg = colors.diag_ok })
    nvim_set_hl('NoiceLspProgressTitle', { link = 'Title' })
  end

  if config.plugins['hop.nvim'] then
    nvim_set_hl('HopNextKey', { fg = colors.magenta })
    nvim_set_hl('HopNextKey1', { fg = colors.blue })
    nvim_set_hl('HopUnmatched', { fg = colors.base01 })
  end

  if config.plugins['mini.statusline'] then
    nvim_set_hl('MiniStatuslineModeNormal', { fg = colors.base03, bg = colors.blue })
    nvim_set_hl('MiniStatuslineModeInsert', { fg = colors.base03, bg = colors.green })
    nvim_set_hl('MiniStatuslineModeVisual', { fg = colors.base03, bg = colors.magenta })
    nvim_set_hl('MiniStatuslineModeReplace', { fg = colors.base03, bg = colors.red })
    nvim_set_hl('MiniStatuslineModeCommand', { fg = colors.base03, bg = colors.orange })
    nvim_set_hl('MinistatusLineFileName', { fg = colors.base0, bg = colors.base04 })
    nvim_set_hl('MiniStatuslineDevinfo', { fg = colors.base0, bg = colors.base02 })
    nvim_set_hl('MiniStatuslineFileinfo', { fg = colors.base0, bg = colors.base02 })
    nvim_set_hl('MiniStatuslineInactive', { fg = colors.base01, bg = colors.base03 })
  end

  if config.plugins['mini.tabline'] then
    nvim_set_hl('MiniTablineCurrent', { fg = colors.base0, bg = colors.base03 })
    nvim_set_hl('MiniTablineVisible', { fg = colors.base0, bg = colors.base03 })
    nvim_set_hl('MiniTablineHidden', { fg = colors.base01, bg = colors.base03 })
    nvim_set_hl('MiniTablineModifiedCurrent', { link = 'MiniTabLineCurrent' })
    nvim_set_hl('MiniTablineModifiedVisible', { link = 'MiniTablineVisible' })
    nvim_set_hl('MiniTablineModifiedHidden', { link = 'MiniTablineHidden' })
    nvim_set_hl('MiniTablineFill', { fg = colors.base0, bg = colors.base04 })
    nvim_set_hl('MiniTablineTabpagesection', { fg = colors.base0, bg = colors.base04 })
  end

  if config.plugins['mini.starter'] then
    nvim_set_hl('MiniStarterCurrent', { link = 'CursorLine' })
    nvim_set_hl('MiniStarterHeader', { fg = colors.base01 })
    nvim_set_hl('MiniStarterFooter', { fg = colors.violet })
    nvim_set_hl('MiniStarterItem', { fg = colors.base0 })
    nvim_set_hl('MiniStarterItemBullet', { fg = colors.blue })
    nvim_set_hl('MiniStarterItemPrefix', { fg = colors.blue })
    nvim_set_hl('MiniStarterSection', { link = 'Title' })
    nvim_set_hl('MiniStarterQuery', { fg = colors.blue, bold = true })
  end

  if config.plugins['mini.cursorword'] then
    nvim_set_hl('MiniCursorword', { bg = colors.base02 })
  end

  if config.plugins['nvim-notify'] then
    nvim_set_hl('NotifyBackground', { bg = colors.base03 })
    nvim_set_hl('NotifyERRORBorder', { link = 'NotifyERRORBody' })
    nvim_set_hl('NotifyWARNBorder', { link = 'NotifyWARNBody' })
    nvim_set_hl('NotifyINFOBorder', { link = 'NotifyINFOBody' })
    nvim_set_hl('NotifyDEBUGBorder', { link = 'NotifyDEBUGBody' })
    nvim_set_hl('NotifyTRACEBorder', { link = 'NotifyTRACEBody' })
    nvim_set_hl('NotifyERRORIcon', { fg = colors.diag_error })
    nvim_set_hl('NotifyWARNIcon', { fg = colors.diag_warning })
    nvim_set_hl('NotifyINFOIcon', { fg = colors.diag_info })
    nvim_set_hl('NotifyDEBUGIcon', { fg = colors.magenta })
    nvim_set_hl('NotifyTRACEIcon', { fg = colors.blue })
    nvim_set_hl('NotifyERRORTitle', { fg = colors.diag_error })
    nvim_set_hl('NotifyWARNTitle', { fg = colors.diag_warning })
    nvim_set_hl('NotifyINFOTitle', { fg = colors.diag_info })
    nvim_set_hl('NotifyDEBUGTitle', { fg = colors.magenta })
    nvim_set_hl('NotifyTRACETitle', { fg = colors.blue })
    nvim_set_hl('NotifyERRORBody', { fg = colors.diag_error, bg = colors.mix_red })
    nvim_set_hl('NotifyWARNBody', { fg = colors.diag_warning, bg = colors.mix_yellow })
    nvim_set_hl('NotifyINFOBody', { fg = colors.diag_info, bg = colors.mix_violet })
    nvim_set_hl('NotifyDEBUGBody', { fg = colors.magenta, bg = colors.mix_magenta })
    nvim_set_hl('NotifyTRACEBody', { fg = colors.blue, bg = colors.mix_blue })
  end

  if config.plugins['rainbow-delimiters'] then
    nvim_set_hl('RainbowDelimiterRed', { fg = colors.red })
    nvim_set_hl('RainbowDelimiteYellow', { fg = colors.yellow })
    nvim_set_hl('RainbowDelimiterBlue', { fg = colors.blue })
    nvim_set_hl('RainbowDelimiterOrange', { fg = colors.orange })
    nvim_set_hl('RainbowDelimiterGreen', { fg = colors.green })
    nvim_set_hl('RainbowDelimiterViolet', { fg = colors.violet })
    nvim_set_hl('RainbowDelimiterCyan', { fg = colors.cyan })
  end

  if config.plugins['bufferline.nvim'] and config.transparent then
    local color = require 'solarized.color'
    local background = color.shade(colors.base02, 2)
    nvim_set_hl('BufferLineFill', { bg = background })
    nvim_set_hl('BufferLineBufferSelected', { fg = colors.base0 })
    nvim_set_hl('BufferLineSeparator', { fg = background })
    nvim_set_hl('BufferLineSeparatorSelected', { fg = background })
    nvim_set_hl('BufferLineSeparatorVisible', { fg = background })
  end

  if config.plugins['lazy.nvim'] then
    nvim_set_hl('LazyH1', { fg = colors.blue, bold = true })
    nvim_set_hl('LazyButton', { fg = colors.cyan, bg = colors.mix_cyan })
    nvim_set_hl('LazyButtonActive', { fg = colors.violet, bg = colors.mix_violet })
    nvim_set_hl('LazyReasonStart', { fg = colors.yellow })
    nvim_set_hl('LazyReasonEvent', { fg = colors.magenta })
    nvim_set_hl('LazyNormal', { fg = colors.base0, bg = colors.base04 })
  end

  if config.on_highlights then
    local color = require 'solarized.color'
    local highlights = config.on_highlights(colors, color)

    for group_name, group_val in pairs(highlights) do
      local hl = nvim_get_hl { name = group_name, link = true }
      local val = {}

      if hl.link then
        val = group_val
      else
        val = vim.tbl_extend('force', hl, group_val)
      end

      vim.api.nvim_set_hl(0, group_name, val)
    end
  end
end

return M
