local function vim_theme(solar)
  local colors = solar.colors

  return {
    -- Editor
    Normal = { fg = colors.fg, bg = solar:is_transparent(colors.bg) },
    NormalNC = { fg = colors.content, bg = solar:is_transparent(colors.bg_alt) },
    NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
    Cursor = { fg = colors.bg, bg = colors.fg },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colors.bg_alt, sp = colors.content },
    CursorLineNr = { bg = colors.bg_alt, sp = colors.content },
    TermCursor = { fg = colors.bg, bg = colors.fg },
    TermCursorNC = { fg = colors.bg, bg = colors.fg },
    DiffText = { fg = colors.blue, sp = colors.blue, reverse = true },
    DiffAdd = { fg = colors.added, sp = colors.added, reverse = true },
    DiffChange = { fg = colors.changed, sp = colors.changed, reverse = true },
    DiffDelete = { fg = colors.deleted, reverse = true },
    Pmenu = { fg = colors.fg, bg = colors.bg_alt, reverse = true, bold = true },
    PmenuSel = { fg = colors.content, bg = colors.bg_alt_invert, reverse = true, bold = true },
    PmenuSbar = { fg = colors.bg_alt_invert, bg = colors.fg, reverse = true, bold = true },
    PmenuThumb = { fg = colors.fg, bg = colors.bg, reverse = true, bold = true },
    WildMenu = { fg = colors.bg_alt_invert, bg = colors.bg_alt, reverse = true, bold = true },
    MsgArea = { fg = colors.content, bg = solar:is_transparent(colors.bg) },
    ModeMsg = { fg = colors.blue },
    MsgSeparator = { fg = colors.content, bg = colors.bg_alt },
    MoreMsg = { fg = colors.blue },
    WarningMsg = { fg = colors.warning, bold = true },
    ErrorMsg = { fg = colors.error, reverse = true },
    MatchParen = { fg = colors.red, bg = colors.content, bold = true },
    TabLine = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    TabLineSel = { fg = colors.comment, bg = colors.bg_alt_invert, sp = colors.fg, reverse = true },
    TabLineFill = { fg = colors.fg, bg = colors.bg_alt, sp = colors.fg },
    Visual = { fg = colors.comment, bg = colors.bg, reverse = true, bold = true },
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
    LineNr = { fg = colors.comment, bg = colors.bg_alt },
    DiffAdded = { fg = colors.added, reverse = true },
    DiffChanged = { fg = colors.changed, reverse = true },
    DiffRemoved = { fg = colors.removed, reverse = true },
    DiffFile = { fg = colors.comment },
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

    -- Git
    SignAdd = { fg = colors.added },
    SignChange = { fg = colors.changed },
    SignDelete = { fg = colors.deleted },
    GitSignsAdd = { fg = colors.added },
    GitSignsChange = { fg = colors.changed },
    GitSignsDelete = { fg = colors.deleted },
    GitGutterAdd = { fg = colors.added },
    GitGutterChange = { fg = colors.changed },
    GitGutterDelete = { fg = colors.deleted },

    -- Treesitter - Tags
    ['@tag.attribute'] = { fg = colors.violet },

    -- Lsp
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
    DiagnosticUnderlineHint = { sp = colors.hint, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.info, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.warning, undercurl = true },
    DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
    DiagnosticSignInformation = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { fg = colors.hint, bg = colors.bg_alt },
    DiagnosticVirtualTextInfo = { fg = colors.info, bg = colors.bg_alt },
    DiagnosticVirtualTextWarn = { fg = colors.warning, bg = colors.bg_alt },
    DiagnosticVirtualTextError = { fg = colors.error, bg = colors.bg_alt },
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
    LspReferenceRead = { bg = colors.bg_alt_invert },
    LspReferenceText = { bg = colors.bg_alt_invert },
    LspReferenceWrite = { bg = colors.bg_alt_invert },
    LspCodeLens = { fg = colors.comment, italic = true },
    LspCodeLensSeparator = { fg = colors.comment, italic = true },

    -- LSPSAGA - general
    TitleString = { link = 'Title' },
    TitleIcon = { fg = colors.red },
    SagaBorder = { link = 'FloatBorder' },
    SagaExpand = { fg = colors.red },
    SagaCollapse = { fg = colors.red },
    SagaBeacon = { bg = colors.magenta },

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

    -- NvimTree
    NvimTreeNormalNC = { link = 'NormalNC' },
    NvimTreeVertSplit = { fg = colors.bg },
    NvimTreeFolderIcon = { fg = colors.red },
    NvimTreeFolderName = { fg = colors.fg },
    NvimTreeOpenedFolderName = { fg = colors.blue },
    NvimTreeRootFolder = { fg = colors.blue },
    NvimTreeGitStaged = { fg = colors.added },
    NvimTreeGitNew = { fg = colors.added },
    NvimTreeGitDeleted = { fg = colors.deleted },

    -- NeoTree
    NeoTreeDirectoryName = { fg = colors.fg },
    NeoTreeDirectoryIcon = { fg = colors.red },
    NeoTreeRootName = { fg = colors.blue },

    -- Lir
    LirDir = { fg = colors.red },

    -- Telescope
    TelescopePreviewTitle = { fg = colors.bg, bg = colors.blue },
    TelescopeResultsTitle = { fg = colors.bg, bg = colors.blue },
    TelescopePromptTitle = { fg = colors.bg, bg = colors.blue },
    TelescopeSelection = { fg = colors.yellow },
    TelescopeMatching = { fg = colors.yellow, reverse = true },

    -- Dashboard
    DashboardHeader = { fg = colors.red },
    DashboardCenter = { fg = colors.fg },
    DashboardFooter = { fg = colors.violet },

    -- Twilight
    Twilight = { fg = solar:is_not_transparent(colors.comment) },

    -- Navic
    NavicIconsFile = { fg = colors.fg },
    NavicIconsModule = { fg = colors.cyan },
    NavicIconsNamespace = { fg = colors.fg },
    NavicIconsPackage = { fg = colors.fg },
    NavicIconsClass = { link = 'Type' },
    NavicIconsMethod = { link = 'Function' },
    NavicIconsProperty = { fg = colors.blue },
    NavicIconsField = { fg = colors.blue },
    NavicIconsConstructor = { link = 'Special' },
    NavicIconsEnum = { link = 'Constant' },
    NavicIconsInterface = { link = 'Special' },
    NavicIconsFunction = { link = 'Function' },
    NavicIconsVariable = { link = 'Variable' },
    NavicIconsConstant = { link = 'Constant' },
    NavicIconsString = { link = 'String' },
    NavicIconsNumber = { link = 'Number' },
    NavicIconsBoolean = { link = 'Boolean' },
    NavicIconsArray = { fg = colors.cyan },
    NavicIconsObject = { fg = colors.cyan },
    NavicIconsKey = { link = 'Keyword' },
    NavicIconsKeyword = { link = 'Keyword' },
    NavicIconsNull = { link = 'Constant' },
    NavicIconsEnumMember = { link = 'Constant' },
    NavicIconsStruct = { link = 'Statement' },
    NavicIconsEvent = { fg = colors.yellow },
    NavicIconsOperator = { fg = colors.fg },
    NavicIconsTypeParameter = { fg = colors.red },
    NavicText = { link = 'String' },
    NavicSeparator = { fg = colors.context },

    -- BarBar
    BufferCurrent = { fg = colors.fg, bg = colors.bg_alt },
    BufferCurrentIndex = { fg = colors.blue, bg = colors.bg_alt },
    BufferCurrentMod = { fg = colors.yellow, bg = colors.bg_alt },
    BufferCurrentSign = { fg = colors.red, bg = colors.bg_alt },
    BufferCurrentTarget = { fg = colors.red, bg = colors.bg_alt, bold = true },
    BufferVisible = { fg = colors.fg, bg = colors.bg },
    BufferVisibleIndex = { fg = colors.blue, bg = colors.bg },
    BufferVisibleMod = { fg = colors.yellow, bg = colors.bg },
    BufferVisibleSign = { fg = colors.blue, bg = colors.bg },
    BufferVisibleTarget = { fg = colors.red, bg = colors.bg, bold = true },
    BufferInactive = { fg = colors.comment, bg = colors.bg },
    BufferInactiveIndex = { fg = colors.comment, bg = colors.bg },
    BufferInactiveMod = { fg = colors.orange, bg = colors.bg },
    BufferInactiveSign = { fg = colors.bg_alt, bg = colors.bg },
    BufferInactiveTarget = { fg = colors.red, bg = colors.bg, bold = true },
    BufferTabpage = { fg = colors.bg_alt, bg = colors.bg },
    BufferTabpages = { bg = colors.bg },

    -- Bufferline
    BufferLineIndicatorSelected = { fg = colors.changed },
  }
end

return vim_theme
