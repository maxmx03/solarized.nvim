local function neovim_theme(solarized, chromatic)
  local colors = solarized.colors

  local darken = chromatic.darken
  local blend = chromatic.blend

  return {
    -- Editor
    Normal = { fg = colors.fg, bg = solarized:is_transparent(colors.bg) },
    NormalNC = { fg = colors.content, bg = solarized:is_transparent(colors.bg_alt) },
    NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
    Cursor = { fg = colors.bg, bg = colors.fg },
    lCursor = { link = 'Cursor' },
    CursorIM = { fg = colors.bg, bg = colors.fg },
    CursorLineNr = { bg = colors.bg_alt, sp = colors.content },
    CursorLine = { bg = colors.bg_alt, sp = colors.content },
    TermCursor = { fg = colors.bg, bg = colors.fg },
    TermCursorNC = { fg = colors.bg, bg = colors.fg },
    DiffText = { fg = colors.blue, sp = colors.blue, reverse = true },
    DiffAdd = { fg = colors.added, sp = colors.added, reverse = true },
    DiffChange = { fg = colors.changed, sp = colors.changed, reverse = true },
    DiffDelete = { fg = colors.deleted, reverse = true },
    Pmenu = { fg = colors.fg, bg = colors.bg_alt, bold = true },
    PmenuSel = { fg = colors.content, bg = colors.bg_alt_invert, reverse = true, bold = true },
    PmenuSbar = { fg = colors.bg_alt_invert, bg = colors.fg, reverse = true, bold = true },
    PmenuThumb = { fg = colors.primary, bg = colors.bg, reverse = true, bold = true },
    WildMenu = { fg = colors.bg_alt_invert, bg = colors.bg_alt, reverse = true, bold = true },
    MsgArea = { fg = colors.content, bg = solarized:is_transparent(colors.bg) },
    ModeMsg = { fg = colors.blue },
    MsgSeparator = { fg = colors.content, bg = colors.bg_alt },
    MoreMsg = { fg = colors.blue },
    WarningMsg = { fg = colors.warning, bold = true },
    ErrorMsg = { fg = colors.error, reverse = true },
    MatchParen = { fg = colors.red, bg = colors.content, bold = true },
    TabLine = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    TabLineSel = { fg = colors.secondary, bg = colors.bg_alt_invert, sp = colors.fg, reverse = true },
    TabLineFill = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    Visual = { fg = colors.secondary, bg = colors.bg, reverse = true, bold = true },
    VisualNOS = { reverse = true },
    Search = { fg = colors.yellow, reverse = true },
    IncSearch = { fg = colors.orange },
    CurSearch = { link = 'IncSearch' },
    Folded = { fg = colors.fg, bg = colors.bg_alt, sp = colors.bg },
    FoldColumn = { fg = colors.fg, bg = colors.bg_alt },
    ColorColumn = { bg = colors.bg_alt },
    SignColumn = { fg = colors.fg },
    VertSplit = { fg = colors.fg, bg = colors.bg_alt },
    WinSeparator = { fg = colors.fg, bold = true },
    FloatBorder = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    SpellBad = { sp = colors.error, undercurl = true },
    SpellCap = { sp = colors.violet, undercurl = true },
    SpellLocal = { sp = colors.warning, undercurl = true },
    SpellRare = { sp = colors.cyan, undercurl = true },
    QuickFixLine = { bg = colors.bg_alt },
    Directory = { fg = colors.blue },
    Question = { fg = colors.cyan, bold = true },
    Conceal = { fg = colors.blue },
    SpecialKey = { fg = colors.red, reverse = true },
    Whitespace = { fg = colors.bg_alt },
    Substitute = { fg = colors.orange, reverse = true },
    EndOfBuffer = { fg = colors.bg },
    NonText = { fg = colors.fg },

    -- Code
    Comment = { fg = colors.comment, italic = true },
    CursorColumn = { bg = colors.bg_alt },
    MatchWord = { bold = true },
    MatchWordCur = { bold = true },
    MatchParenCur = { bold = true },
    LineNr = { fg = colors.secondary, bg = colors.bg_alt },
    DiffAdded = { fg = colors.added, reverse = true },
    DiffChanged = { fg = colors.changed, reverse = true },
    DiffRemoved = { fg = colors.removed, reverse = true },
    DiffFile = { fg = colors.secondary },
    DiffIndexLine = { fg = colors.violet },
    Title = { fg = colors.orange, bold = true },
    Constant = { fg = colors.cyan },
    --       *Constant        any constant
    --        String          a string constant: "this is a string"
    --        Character       a character constant: 'c', '\n'
    --        Number          a number constant: 234, 0xff
    --        Boolean         a boolean constant: TRUE, false
    --        Float           a floating point constant: 2.3e10
    -- String = { fg = colors.cyan },
    -- Character = { fg = colors.cyan },
    -- Number = { fg = colors.cyan },
    -- Boolean = { fg = colors.cyan },
    -- Float = { fg = colors.cyan },
    Identifier = { fg = colors.blue },
    --       *Identifier      any variable name
    --        Function        function name (also: methods for classes)
    -- Variable = { fg = colors.blue },
    -- Function = { fg = colors.blue },
    Statement = { fg = colors.green },
    --       *Statement       any statement
    --        Conditional     if, then, else, endif, switch, etc.
    --        Repeat          for, do, while, etc.
    --        Label           case, default, etc.
    --        Operator        "sizeof", "+", "*", etc.
    --        Keyword         any other keyword
    --        Exception       try, catch, throw
    -- Conditional = { fg = colors.green },
    -- Repeat = { fg = colors.green },
    -- Label = { fg = colors.green },
    -- Operator = { fg = colors.green },
    -- Keyword = { fg = colors.green },
    -- Exception = { fg = colors.green },
    PreProc = { fg = colors.orange },
    --       *PreProc         generic Preprocessor
    --        Include         preprocessor #include
    --        Define          preprocessor #define
    --        Macro           same as Define
    --        PreCondit       preprocessor #if, #else, #endif, etc.
    -- Include = { fg = colors.orange },
    -- Define = { fg = colors.orange },
    -- Macro = { fg = colors.orange },
    -- PreCondit = { fg = colors.orange },
    Type = { fg = colors.yellow },
    --       *Type            int, long, char, etc.
    --        StorageClass    static, register, volatile, etc.
    --        Structure       struct, union, enum, etc.
    --        Typedef         A typedef
    -- StorageClass = { fg = colors.yellow },
    -- Structure = { fg = colors.yellow },
    -- Typedef = { fg = colors.yellow },
    Special = { fg = colors.red },
    --       *Special         any special symbol
    --        SpecialChar     special character in a constant
    --        Tag             you can use CTRL-] on this
    --        Delimiter       character that needs attention
    --        SpecialComment  special things inside a comment
    --        Debug           debugging statements
    -- SpecialChar = { fg = colors.red },
    -- Tag = { fg = colors.red },
    -- Delimiter = { fg = colors.red },
    -- SpecialComment = { fg = colors.red },
    -- Debug = { fg = colors.red },
    Underlined = { fg = colors.violet, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = colors.cyan, bg = colors.bg_alt, bold = true },
    Todo = { fg = colors.red, bg = colors.bg_alt, bold = true },
    Error = { fg = colors.error, bg = colors.bg_alt, bold = true },

    -- GIT
    SignAdd = { fg = colors.added },
    SignChange = { fg = colors.changed },
    SignDelete = { fg = colors.deleted },
    GitSignsAdd = { fg = colors.added },
    GitSignsChange = { fg = colors.changed },
    GitSignsDelete = { fg = colors.deleted },
    GitGutterAdd = { fg = colors.added },
    GitGutterChange = { fg = colors.changed },
    GitGutterDelete = { fg = colors.deleted },

    -- Treesitter - Misc
    ['@comment'] = { link = 'Comment' },
    ['@error'] = { link = 'Error' },
    ['@preproc'] = { link = 'PreProc' },
    ['@define'] = { link = 'Define' },
    ['@operator'] = { link = 'Operator' },

    -- Treesitter - Punctuation
    ['@punctuation.delimiter'] = { link = 'Delimiter' },
    ['@punctuation.bracket'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { fg = colors.magenta },

    -- Treesitter - Literals
    ['@string'] = { link = 'String' },
    ['@string.regex'] = { fg = colors.magenta },
    ['@string.escape'] = { fg = colors.magenta },
    ['@string.special'] = { fg = colors.magenta },
    ['@character'] = { link = 'Character' },
    ['@character.special'] = { fg = colors.magenta },
    ['@boolean'] = { fg = colors.violet },
    ['@number'] = { fg = colors.violet },
    ['@float'] = { link = '@number' },

    -- Treesitter - Functions
    ['@function'] = { link = 'Function' },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    ['@method'] = { link = 'Type' },
    ['@method.call'] = { link = 'Type' },
    ['@constructor'] = { fg = colors.red },
    ['@parameter'] = { fg = colors.content, italic = true },

    -- Treesitter - Keywords
    ['@keyword'] = { link = 'Keyword' },
    ['@keyword.function'] = { link = '@keyword' },
    ['@keyword.operator'] = { link = '@keyword' },
    ['@keyword.return'] = { link = '@keyword' },
    ['@conditional'] = { link = '@keyword' },
    ['@conditional.ternary'] = { link = '@keyword' },
    ['@repeat'] = { link = '@keyword' },
    ['@debug'] = { fg = colors.magenta },
    ['@label'] = { link = '@keyword' },
    ['@include'] = { link = '@keyword' },
    ['@exception'] = { link = '@keyword' },

    -- Treesitter - Types
    ['@type'] = { link = 'Type' },
    ['@type.builtin'] = { fg = colors.green },
    ['@type.definition'] = { link = '@type.builtin' },
    ['@type.qualifier'] = { link = '@type.builtin' },
    ['@storageclass'] = { link = '@type' },
    ['@attribute'] = { link = '@keyword' },
    ['@field'] = { fg = colors.blue },
    ['@property'] = { link = '@field' },

    -- Treesitter - Identifiers
    ['@variable'] = { link = 'Variable' },
    ['@variable.builtin'] = { fg = colors.violet },
    ['@constant'] = { fg = colors.violet },
    ['@constant.builtin'] = { link = '@constant' },
    ['@constant.macro'] = { link = '@constant' },
    ['@namespace'] = { link = '@keyword' },
    ['@symbol'] = { link = '@keyword' },

    -- Treesitter - Text
    ['@text'] = { fg = colors.fg },
    ['@text.strong'] = { fg = colors.magenta },
    ['@text.emphasis'] = { fg = colors.magenta },
    ['@text.strike'] = { fg = colors.content },
    ['@text.title'] = { link = 'Title' },
    ['@text.literal'] = { link = '@text' },
    ['@text.quote'] = { fg = colors.cyan },
    ['@text.uri'] = { fg = colors.violet },
    ['@text.math'] = { fg = colors.magenta },
    ['@text.reference'] = { fg = colors.violet },
    ['@text.todo'] = { link = 'Title' },
    ['@text.warning'] = { link = 'WarningMsg' },
    ['@text.danger'] = { link = 'ErrorMsg' },
    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },

    -- Treesitter - Tags
    ['@tag'] = { link = '@keyword' },
    ['@tag.attribute'] = { link = '@property' },
    ['@tag.delimiter'] = { fg = colors.red },

    -- Treesitter - Locals
    ['@definition.constant'] = { link = '@constant' },
    ['@definition.function'] = { link = '@function' },
    ['@definition.method'] = { link = '@method' },
    ['@defition.var'] = { link = '@variable' },
    ['@defition.parameter'] = { link = '@parameter' },
    ['@definition.macro'] = { link = '@constant.macro' },
    ['@definition.type'] = { link = '@type' },
    ['@definition.field'] = { link = '@field' },
    ['@defition.enum'] = { link = '@keyword' },
    ['@defition.namespace'] = { link = '@keyword' },
    ['@defition.import'] = { link = '@keyword' },

    -- LSP
    DiagnosticHint = { fg = colors.hint },
    DiagnosticInfo = { fg = colors.info },
    DiagnosticError = { fg = colors.error },
    DiagnosticOther = { fg = colors.other },
    DiagnosticSignHint = { link = 'DiagnosticHint' },
    DiagnosticSignInfo = { link = 'DiagnosticInfo' },
    DiagnosticSignWarn = { link = 'DiagnosticWarn' },
    DiagnosticSignError = { link = 'DiagnosticError' },
    DiagnosticSignOther = { link = 'DiagnosticOther' },
    DiagnosticSignWarning = { link = 'DiagnosticWarn' },
    DiagnosticFloatingHint = { link = 'DiagnosticHint' },
    DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
    DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
    DiagnosticFloatingError = { link = 'DiagnosticError' },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
    DiagnosticSignInformation = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = blend(colors.hint, colors.bg, 0.15) },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = blend(colors.info, colors.bg, 0.15) },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = blend(colors.warning, colors.bg, 0.15) },
    DiagnosticVirtualTextError = { fg = colors.error, bg = blend(colors.error, colors.bg, 0.15) },
    LspDiagnosticsError = { link = 'DiagnosticError' },
    LspDiagnosticsWarning = { link = 'DiagnosticWarn' },
    LspDiagnosticsInfo = { link = 'DiagnosticInfo' },
    LspDiagnosticsInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsHint = { link = 'DiagnosticHint' },
    LspDiagnosticsDefaultError = { link = 'LspDiagnosticsError' },
    LspDiagnosticsDefaultWarning = { link = 'LspDiagnosticsWarning' },
    LspDiagnosticsDefaultInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsDefaultInfo = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsDefaultHint = { link = 'LspDiagnosticsHint' },
    LspDiagnosticsVirtualTextError = { link = 'DiagnosticVirtualTextError' },
    LspDiagnosticsVirtualTextWarning = { link = 'DiagnosticVirtualTextWarn' },
    LspDiagnosticsVirtualTextInformation = { link = 'DiagnosticVirtualTextInfo' },
    LspDiagnosticsVirtualTextInfo = { link = 'DiagnosticVirtualTextInfo' },
    LspDiagnosticsVirtualTextHint = { link = 'DiagnosticVirtualTextHint' },
    LspDiagnosticsFloatingError = { link = 'LspDiagnosticsError' },
    LspDiagnosticsFloatingWarning = { link = 'LspDiagnosticsWarning' },
    LspDiagnosticsFloatingInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsFloatingInfo = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsFloatingHint = { link = 'LspDiagnosticsHint' },
    LspDiagnosticsSignError = { link = 'LspDiagnosticsError' },
    LspDiagnosticsSignWarning = { link = 'LspDiagnosticsWarning' },
    LspDiagnosticsSignInformation = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsSignInfo = { link = 'LspDiagnosticsInfo' },
    LspDiagnosticsSignHint = { link = 'LspDiagnosticsHint' },
    NvimTreeLspDiagnosticsError = { link = 'LspDiagnosticsError' },
    NvimTreeLspDiagnosticsWarning = { link = 'LspDiagnosticsWarning' },
    NvimTreeLspDiagnosticsInformation = { link = 'LspDiagnosticsInfo' },
    NvimTreeLspDiagnosticsInfo = { link = 'LspDiagnosticsInfo' },
    NvimTreeLspDiagnosticsHint = { link = 'LspDiagnosticsHint' },
    LspDiagnosticsUnderlineError = { link = 'DiagnosticUnderlineError' },
    LspDiagnosticsUnderlineWarning = { link = 'DiagnosticUnderlineWarn' },
    LspDiagnosticsUnderlineInformation = { link = 'DiagnosticUnderlineInfo' },
    LspDiagnosticsUnderlineInfo = { link = 'DiagnosticUnderlineInfo' },
    LspDiagnosticsUnderlineHint = { link = 'DiagnosticUnderlineHint' },
    LspReferenceText = { bg = colors.bg_alt },
    LspReferenceRead = { bg = colors.bg_alt },
    LspReferenceWrite = { bg = colors.bg_alt },
    LspCodeLens = { fg = colors.comment, italic = true },
    LspCodeLensSeparator = { fg = colors.comment, italic = true },

    -- LSPSAGA - code action
    ActionPreviewNormal = { link = 'SagaNormal' },
    ActionPreviewBorder = { link = 'SagaBorder' },
    ActionPreviewTitle = { fg = colors.violet, bg = colors.bg_alt },
    CodeActionNormal = { link = 'SagaNormal' },
    CodeActionBorder = { link = 'SagaBorder' },
    CodeActionText = { link = 'String' },
    CodeActionNumber = { link = 'Number' },
    -- LSPSAGA - finder
    FinderSelection = { link = 'PmenuSel' },
    FinderFileName = { fg = colors.content },
    FinderCount = { link = 'Label' },
    FinderIcon = { fg = colors.cyan },
    FinderType = { fg = colors.violet },
    -- lSPSAGA - finder spinner
    FinderSpinnerTitle = { link = 'Title' },
    FinderSpinner = { fg = colors.magenta, bold = true },
    FinderPreviewSearch = { link = 'Search' },
    FinderVirtText = { fg = colors.red },
    FinderNormal = { link = 'SagaNormal' },
    FinderBorder = { link = 'SagaBorder' },
    FinderPreviewBorder = { link = 'SagaBorder' },
    -- LSPSAGA - definition
    DefinitionBorder = { link = 'SagaBorder' },
    DefinitionNormal = { link = 'SagaNormal' },
    DefinitionSearch = { link = 'Search' },
    -- LSPSAGA - hover
    HoverNormal = { link = 'SagaNormal' },
    HoverBorder = { link = 'SagaBorder' },
    -- LSPSAGA - rename
    RenameBorder = { link = 'SagaBorder' },
    RenameNormal = { fg = colors.orange, bg = colors.bg_alt },
    RenameMatch = { link = 'Search' },
    -- LSPSAGA - diagnostic
    DiagnosticBorder = { link = 'SagaBorder' },
    DiagnosticSource = { fg = 'gray' },
    DiagnosticNormal = { link = 'SagaNormal' },
    DiagnosticPos = { fg = colors.gray },
    DiagnosticWord = { fg = colors.fg },
    --  LSPSAGA - Call Hierachry
    CallHierarchyNormal = { link = 'SagaNormal' },
    CallHierarchyBorder = { link = 'SagaBorder' },
    CallHierarchyIcon = { fg = colors.violet },
    CallHierarchyTitle = { fg = colors.red },
    -- LSPSAGA - lightbulb
    LspSagaLightBulb = { link = 'DiagnosticSignHint' },
    -- LSPSAGA - shadow
    SagaShadow = { bg = colors.bg_alt },
    -- LSPSAGA- Outline
    OutlineIndent = { fg = colors.magenta },
    OutlinePreviewBorder = { link = 'SagaNormal' },
    OutlinePreviewNormal = { link = 'SagaBorder' },
    -- LSPSAGA - Float term
    TerminalBorder = { link = 'SagaBorder' },
    TerminalNormal = { link = 'SagaNormal' },

    -- CMP KIND
    CmpItemAbbrDeprecated = { fg = colors.secondary, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.yellow, reverse = true },
    CmpItemAbbrMatchFuzzy = { fg = colors.yellow, reverse = true },
    CmpItemKindFunction = { link = '@function' },
    CmpItemKindMethod = { link = '@method' },
    CmpItemKindConstructor = { link = '@constructor' },
    CmpItemKindClass = { link = '@type' },
    CmpItemKindEnum = { link = '@constant' },
    CmpItemKindEvent = { fg = colors.yellow },
    CmpItemKindInterface = { link = '@constructor' },
    CmpItemKindStruct = { link = '@type' },
    CmpItemKindVariable = { link = '@variable.builtin' },
    CmpItemKindField = { link = '@field' },
    CmpItemKindProperty = { link = '@property' },
    CmpItemKindEnumMember = { link = '@constant.builtin' },
    CmpItemKindConstant = { link = '@constant.builtin' },
    CmpItemKindKeyword = { link = '@keyword' },
    CmpItemKindModule = { link = '@function' },
    CmpItemKindValue = { fg = colors.fg },
    CmpItemKindUnit = { link = '@number' },
    CmpItemKindText = { link = '@string' },
    CmpItemKindSnippet = { fg = colors.fg },
    CmpItemKindFile = { fg = colors.fg },
    CmpItemKindFolder = { fg = colors.fg },
    CmpItemKindColor = { fg = colors.fg },
    CmpItemKindReference = { fg = colors.fg },
    CmpItemKindOperator = { link = '@operator' },
    CmpItemKindTypeParameter = { fg = colors.violet },

    -- NVIM-TREE
    NvimTreeNormalNC = { link = 'NormalNC' },
    NvimTreeVertSplit = { fg = colors.bg },
    NvimTreeFolderIcon = { fg = colors.orange },
    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeOpenedFolderName = { fg = colors.blue },
    NvimTreeRootFolder = { fg = colors.blue },
    NvimTreeGitStaged = { fg = colors.added },
    NvimTreeGitNew = { fg = colors.added },
    NvimTreeGitDeleted = { fg = colors.deleted },

    -- NEO-TREE
    NeoTreeDirectoryName = { fg = colors.fg },
    NeoTreeDirectoryIcon = { fg = colors.blue },
    NeoTreeRootName = { fg = colors.blue },

    -- TELESCOPE
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.blue },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.blue },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.blue },
    TelescopeSelection = { fg = colors.yellow },
    TelescopeMatching = { fg = colors.yellow, reverse = true },

    -- DASHBOARD
    DashboardHeader = { fg = colors.primary },
    DashboardCenter = { fg = colors.fg },
    DashboardFooter = { fg = colors.violet },

    -- HOP
    HopPreview = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15), bold = true },
    HopNextKey = { fg = colors.magenta, bg = blend(colors.magenta, colors.bg, 0.15), bold = true },
    HopNextKey1 = { fg = colors.blue, bg = blend(colors.blue, colors.bg, 0.15), bold = true },
    HopNextKey2 = { fg = darken(colors.blue, 10) },
    HopUnmatched = { fg = darken(colors.fg, 2) },

    -- TWILIGHT
    Twilight = { fg = solarized:is_not_transparent(colors.secondary) },

    -- Navic
    NavicIconsFile = { fg = colors.blue },
    NavicIconsModule = { link = '@namespace' },
    NavicIconsNamespace = { link = '@namespace' },
    NavicIconsPackage = { fg = colors.blue },
    NavicIconsClass = { link = '@type' },
    NavicIconsMethod = { link = '@method' },
    NavicIconsProperty = { link = '@property' },
    NavicIconsField = { link = '@field' },
    NavicIconsConstructor = { link = '@constructor' },
    NavicIconsEnum = { link = '@keyword' },
    NavicIconsInterface = { link = '@type' },
    NavicIconsFunction = { link = '@function' },
    NavicIconsVariable = { link = '@variable' },
    NavicIconsConstant = { link = '@constant' },
    NavicIconsString = { link = '@string' },
    NavicIconsNumber = { link = '@number' },
    NavicIconsBoolean = { link = '@boolean' },
    NavicIconsArray = { link = 'punctuation.bracket' },
    NavicIconsObject = { link = '@property' },
    NavicIconsKey = { link = '@keyword' },
    NavicIconsKeyword = { link = 'Keyword' },
    NavicIconsNull = { link = '@constant' },
    NavicIconsEnumMember = { link = '@constant' },
    NavicIconsStruct = { link = '@keyword' },
    NavicIconsEvent = { link = 'Special' },
    NavicIconsOperator = { link = '@operator' },
    NavicIconsTypeParameter = { link = '@parameter' },
    NavicText = { link = '@text' },
    NavicSeparator = { fg = colors.context },
  }
end

return neovim_theme
