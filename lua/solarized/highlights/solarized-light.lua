local M = {}

local function nvim_get_hl(opts)
  local hl = vim.api.nvim_get_hl(0, opts)

  if hl.link then
    return nvim_get_hl { name = hl.link }
  end

  return hl
end

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

    if config and config.error_lens then
      local color = require 'solarized.color'
      local editor = require('solarized.utils').nvim_get_hl 'Normal'
      local ok, mix_color = pcall(color.blend, group_val.fg, editor.bg, 0.1)
      if ok then
        group_val.bg = mix_color
      else
        group_val.bg = color.tint(group_val.fg, 7)
      end
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
  local color = require 'solarized.color'
  if config.on_colors then
    colors = vim.tbl_extend('force', colors, config.on_colors(colors, color))
  end
  local solarized_light = require 'solarized.variants.solarized-light'
  solarized_light.set_variant {
    config = config,
    nvim_set_hl = nvim_set_hl,
    colors = colors,
    color = color,
  }

  -- EDITOR :h highlight-groups
  nvim_set_hl('ColorColumn', { bg = colors.base2 })
  nvim_set_hl('Conceal', { fg = colors.blue })
  nvim_set_hl('CurSearch', { link = 'IncSearch' })
  nvim_set_hl('Cursor', { fg = colors.base3, bg = colors.base00 })
  nvim_set_hl('lCursor', { link = 'Cursor' })
  nvim_set_hl('CursorIM', { link = 'Cursor' })
  nvim_set_hl('CursorColumn', { link = 'ColorColumn' })
  nvim_set_hl('CursorLine', { bg = colors.base2 })
  nvim_set_hl('Directory', { fg = colors.blue })
  nvim_set_hl('DiffAdd', { fg = colors.git_add })
  nvim_set_hl('DiffChange', { fg = colors.git_modify })
  nvim_set_hl('DiffDelete', { fg = colors.git_delete, reverse = true })
  nvim_set_hl('DiffText', { fg = colors.cyan, reverse = true })
  nvim_set_hl('EndOfBuffer', { fg = colors.base3 })
  nvim_set_hl('TermCursor', { link = 'Cursor' })
  nvim_set_hl('TermCursorNC', { fg = colors.base3, bg = colors.base00 })
  nvim_set_hl('ErrorMsg', { fg = colors.diag_error })
  -- nvim_set_hl(
  --   'WinSeparator',
  --   { fg = colors.blue, bg = colors.base4 },
  --   { transparent = config.transparent.enabled }
  -- )
  nvim_set_hl('Folded', { fg = colors.base00, bg = colors.base2 })
  nvim_set_hl('FoldColumn', { fg = colors.base00, bg = colors.base2 })
  -- nvim_set_hl(
  --   'SignColumn',
  --   { fg = colors.base00, bg = colors.base2 },
  --   { transparent = config.transparent.enabled }
  -- )
  nvim_set_hl(
    'IncSearch',
    { fg = colors.yellow, bg = colors.mix_yellow, bold = true },
    { transparent = config.transparent.enabled }
  )
  nvim_set_hl('Substitute', { link = 'IncSearch' })
  -- nvim_set_hl(
  --   'LineNr',
  --   { fg = colors.base1, bg = colors.base2 },
  --   { transparent = config.transparent.enabled }
  -- )
  nvim_set_hl('LineNrAbove', { link = 'LineNr' })
  nvim_set_hl('LineNrBelow', { link = 'LineNr' })
  -- nvim_set_hl(
  --   'CursorLineNr',
  --   { fg = colors.base01, bg = colors.base2 },
  --   { transparent = config.transparent.enabled }
  -- )
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
    { fg = colors.base00, bg = colors.base3 },
    { transparent = config.transparent.normal and config.transparent.enabled }
  )
  nvim_set_hl('NormalFloat', { fg = colors.base00, bg = colors.base4 }, {
    transparent = config.transparent.normalfloat and config.transparent.enabled,
  })
  -- nvim_set_hl('FloatBorder', { link = 'WinSeparator' })
  -- nvim_set_hl('FloatTitle', { fg = colors.blue })
  nvim_set_hl('NormalNC', { link = 'Normal' })
  nvim_set_hl('Pmenu', { fg = colors.base00, bg = colors.base4 }, {
    transparent = config.transparent.pmenu and config.transparent.enabled,
  })
  nvim_set_hl('PmenuSel', { fg = colors.blue, reverse = true })
  nvim_set_hl('PmenuKind', { link = 'Pmenu' })
  nvim_set_hl('PmenuKindSel', { link = 'PmenuSel' })
  nvim_set_hl('PmenuExtra', { link = 'Pmenu' })
  nvim_set_hl('PmenuExtraSel', { link = 'PmenuSel' })
  nvim_set_hl('PmenuSbar', { bg = colors.base2 })
  nvim_set_hl('PmenuThumb', { bg = colors.blue })
  nvim_set_hl('Question', { fg = colors.diag_info })
  nvim_set_hl('QuickFixLine', { fg = colors.base00, bg = colors.base3 })
  nvim_set_hl('Search', { fg = colors.green, bg = colors.mix_green })
  nvim_set_hl('SpecialKey', { link = 'NonText' })
  nvim_set_hl('SpellBad', { underline = true, strikethrough = true })
  nvim_set_hl('SpellCap', { fg = colors.diag_hint })
  nvim_set_hl('SpellLocal', { link = 'SpellCap' })
  nvim_set_hl('SpellRare', { fg = colors.diag_warning })
  nvim_set_hl('StatusLine', { fg = colors.base01, bg = colors.base2 })
  nvim_set_hl('StatusLineNC', { fg = colors.base01, bg = colors.base2 })
  nvim_set_hl('TabLine', { fg = colors.base01, bg = colors.base2 })
  nvim_set_hl('TabLineFill', { fg = colors.base0, bg = colors.base2 })
  nvim_set_hl('TabLineSel', { fg = colors.base0, bg = colors.base3 })
  nvim_set_hl('Title', { fg = colors.blue })
  nvim_set_hl('Visual', { fg = colors.magenta, bg = colors.mix_magenta, bold = true })
  nvim_set_hl('VisualNOS', { link = 'Visual' })
  nvim_set_hl('warningMsg', { fg = colors.diag_warning })
  nvim_set_hl('Whitespace', { fg = colors.base01 })
  nvim_set_hl('WildMenu', { fg = colors.base2 })
  nvim_set_hl('WinBar', { link = 'Pmenu' })
  nvim_set_hl('WinBarNC', { link = 'WinBar' })

  -- PLUGINS
  if config.plugins.treesitter then
    nvim_set_hl('@variable', { link = 'Identifier' })
    nvim_set_hl('@variable.builtin', { link = 'Constant' })
    nvim_set_hl('@variable.parameter', { link = 'Parameter' })
    nvim_set_hl('@variable.member', { link = 'Property' })
    nvim_set_hl('@property', { link = 'Property' })
    nvim_set_hl('@property.json', { link = 'Keyword' })
    nvim_set_hl('@property.yaml', { link = 'Keyword' })
    nvim_set_hl('@constant', { link = 'Constant' })
    nvim_set_hl('@constant.builtin', { link = 'Constant' })
    nvim_set_hl('@constant.macro', { link = 'Constant' })
    nvim_set_hl('@constant.html', { link = 'Tag' })
    nvim_set_hl('@module', { link = 'Type' })
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
    nvim_set_hl('@attribute', { link = 'Keyword' })
    nvim_set_hl('@function', { link = 'Function' })
    nvim_set_hl('@function.builtin', { link = 'Function' })
    nvim_set_hl('@function.call', { link = 'Function' })
    nvim_set_hl('@function.macro', { link = 'Function' })
    nvim_set_hl('@function.method', { link = 'Function' })
    nvim_set_hl('@function.method.call', { link = 'Function' })
    nvim_set_hl('@constructor', { link = 'Type' })
    nvim_set_hl('@constructor.lua', { link = 'Delimiter' })
    nvim_set_hl('@operator', { link = 'Operator' })
    nvim_set_hl('@keyword', { link = 'Keyword' })
    nvim_set_hl('@keyword.coroutine', { link = 'Statement' })
    nvim_set_hl('@keyword.function', { link = 'Keyword' })
    nvim_set_hl('@keyword.operator', { link = 'Statement' })
    nvim_set_hl('@keyword.import', { link = 'Include' })
    nvim_set_hl('@keyword.repeat', { link = 'Statement' })
    nvim_set_hl('@keyword.return', { link = 'Statement' })
    nvim_set_hl('@keyword.debug', { link = 'Statement' })
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
    nvim_set_hl('@markup.italic', { fg = colors.magenta, italic = true })
    nvim_set_hl('@markup.strikethrough', { fg = colors.base1, strikethrough = true })
    nvim_set_hl('@markup.underline', { link = 'Underlined' })
    nvim_set_hl('@markup.heading', { fg = colors.red, bold = true })
    nvim_set_hl('@markup.heading.1', { fg = colors.red, bold = true })
    nvim_set_hl('@markup.heading.2', { fg = colors.magenta })
    nvim_set_hl('@markup.heading.3', { fg = colors.yellow })
    nvim_set_hl('@markup.heading.4', { fg = colors.orange })
    nvim_set_hl('@markup.heading.5', { fg = colors.blue })
    nvim_set_hl('@markup.heading.6', { fg = colors.violet })
    nvim_set_hl('@markup.quote', { fg = colors.green })
    nvim_set_hl('@markup.math', { fg = colors.violet })
    nvim_set_hl('@markup.environment', { link = 'Comment' })
    nvim_set_hl('@markup.link', { link = 'Underlined' })
    nvim_set_hl('@markup.link.label', { link = 'Constant' })
    nvim_set_hl('@markup.link.url', { link = 'Underlined' })
    nvim_set_hl('@markup.raw', { fg = colors.cyan })
    nvim_set_hl('@markup.raw.block', { fg = colors.base00 })
    nvim_set_hl('@markup.list', { fg = colors.orange })
    nvim_set_hl('@markup.list.checked', { fg = colors.green })
    nvim_set_hl('@markup.list.unchecked', { fg = colors.base1 })
    nvim_set_hl('@diff.plus', { fg = colors.git_add })
    nvim_set_hl('@diff.minus', { fg = colors.git_delete })
    nvim_set_hl('@diff.delta', { fg = colors.git_modify })
    nvim_set_hl('@tag', { link = 'Tag' })
    nvim_set_hl('@tag.attribute', { link = 'TagAttribute' })
    nvim_set_hl('@tag.delimiter', { link = 'Delimiter' })
  end

  local signcolumn = require('solarized.utils').nvim_get_hl 'SignColumn'
  if config.plugins.lspconfig then
    nvim_set_hl('@lsp.type.class', { link = 'Type' })
    nvim_set_hl('@lsp.type.decorator', { link = 'Function' })
    nvim_set_hl('@lsp.type.enum', { link = 'Type' })
    nvim_set_hl('@lsp.type.enumMember', { link = 'Type' })
    nvim_set_hl('@lsp.type.interface', { link = 'Type' })
    nvim_set_hl('@lsp.type.macro', { link = '@function.builtin' })
    nvim_set_hl('@lsp.type.namespace', { link = 'Type' })
    nvim_set_hl('@lsp.type.parameter', { link = 'Parameter' })
    nvim_set_hl('@lsp.type.property', { link = 'Property' })
    nvim_set_hl('@lsp.type.struct', { link = 'Type' })
    nvim_set_hl('@lsp.type.type', { link = 'Type' })
    nvim_set_hl('@lsp.type.typeParameter', { link = 'Type' })
    nvim_set_hl('@lsp.type.variable', { link = 'Identifier' })
    nvim_set_hl('@lsp.typemod.variable.defaultLibrary', { link = 'Constant' })
    nvim_set_hl('@lsp.typemod.variable.readonly', { link = 'Constant' })
    nvim_set_hl('@lsp.typemod.variable.global', { link = 'Constant' })
    nvim_set_hl('@lsp.typemod.keyword.documentation', { link = 'Statement' })
    nvim_set_hl('@lsp.typemod.class.documentation', { link = 'Type' })
    nvim_set_hl('@lsp.typemod.property.readonly', { link = 'Constant' })
    nvim_set_hl('DiagnosticError', { fg = colors.diag_error })
    nvim_set_hl('DiagnosticWarn', { fg = colors.diag_warning })
    nvim_set_hl('DiagnosticInfo', { fg = colors.diag_info })
    nvim_set_hl('DiagnosticHint', { fg = colors.diag_hint })
    nvim_set_hl('DiagnosticOk', { fg = colors.diag_ok })
    nvim_set_hl(
      'DiagnosticVirtualTextError',
      { fg = colors.diag_error },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'DiagnosticVirtualTextWarn',
      { fg = colors.diag_warning },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'DiagnosticVirtualTextInfo',
      { fg = colors.diag_hint },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'DiagnosticVirtualTextHint',
      { fg = colors.diag_info },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'DiagnosticVirtualTextOk',
      { fg = colors.diag_ok },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'DiagnosticUnderlineError',
      { fg = colors.diag_error, underline = true, sp = colors.diag_error }
    )
    nvim_set_hl(
      'DiagnosticUnderlineWarn',
      { fg = colors.diag_warning, underline = true, sp = colors.diag_warning }
    )
    nvim_set_hl(
      'DiagnosticUnderlineInfo',
      { fg = colors.diag_info, underline = true, sp = colors.diag_info }
    )
    nvim_set_hl(
      'DiagnosticUnderlineHint',
      { fg = colors.diag_hint, underline = true, sp = colors.diag_hint }
    )
    nvim_set_hl(
      'DiagnosticUnderlineOk',
      { fg = colors.diag_ok, underline = true, sp = colors.diag_ok }
    )
    nvim_set_hl(
      'DiagnosticSignError',
      { fg = colors.diag_error, bg = signcolumn.bg },
      { transparent = config.transparent.enabled, error_lens = config.error_lens.symbol }
    ) -- Used for "Error" signs in sign column.
    nvim_set_hl(
      'DiagnosticSignWarn',
      { fg = colors.diag_warning, bg = signcolumn.bg },
      { transparent = config.transparent.enabled, error_lens = config.error_lens.symbol }
    ) -- Used for "Warn" signs in sign column.
    nvim_set_hl(
      'DiagnosticSignInfo',
      { fg = colors.diag_info, bg = signcolumn.bg },
      { transparent = config.transparent.enabled, error_lens = config.error_lens.symbol }
    ) -- Used for "Info" signs in sign column.
    nvim_set_hl(
      'DiagnosticSignHint',
      { fg = colors.diag_hint, bg = signcolumn.bg },
      { transparent = config.transparent.enabled, error_lens = config.error_lens.symbol }
    ) -- Used for "Hint" signs in sign column.
    nvim_set_hl(
      'DiagnosticSignOk',
      { fg = colors.diag_ok, bg = signcolumn.bg },
      { transparent = config.transparent.enabled }
    )
    nvim_set_hl('LspReferenceText', { fg = colors.cyan, bg = colors.mix_cyan })
    nvim_set_hl('LspReferenceRead', { link = 'Visual' })
    nvim_set_hl('LspReferenceWrite', { link = 'Visual' })
    nvim_set_hl('LspInlayHint', { fg = colors.base1 })
  end

  if config.plugins.navic then
    nvim_set_hl('NavicText', { fg = colors.base00 })
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

  if config.plugins.cmp then
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

  if config.plugins.indentblankline then
    nvim_set_hl('IblIndent', { fg = colors.mix_base01 })
    nvim_set_hl('IblScope', { fg = colors.base1 })
  end

  if config.plugins.neotree then
    nvim_set_hl('NeoTreeTitleBar', { fg = colors.blue, reverse = true })
    nvim_set_hl(
      'NeoTreeNormal',
      { fg = colors.base01, bg = colors.base4 },
      { transparent = config.transparent.neotree and config.transparent.enabled }
    )
    nvim_set_hl('NeoTreeNormalNC', { link = 'NeoTreeNormal' })
    nvim_set_hl('NeoTreeDotFile', { fg = colors.base1 })
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

  if config.plugins.nvimtree then
    nvim_set_hl('NvimTreeSymlink', { link = 'Underlined' })
    nvim_set_hl('NvimTreeSymlinkIcon', { link = 'Directory' })
    nvim_set_hl('NvimTreeFolderName', { fg = colors.base01 })
    nvim_set_hl('NvimTreeRootFolder', { link = 'Title' })
    nvim_set_hl('NvimTreeFolderIcon', { link = 'Directory' })
    nvim_set_hl('NvimTreeEmptyFolderName', { fg = colors.base01 })
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
      { fg = colors.base01, bg = colors.base4 },
      { transparent = config.transparent.nvimtree and config.transparent.enabled }
    )
    nvim_set_hl('NvimTreeNormalFloat', { link = 'NvimTreeNormal' })
    nvim_set_hl('NvimTreeEndOfBuffer', { fg = colors.base4 })
    nvim_set_hl('NvimTreeWinSeparator', { link = 'WinSeparator' })
  end

  if config.plugins.whichkey then
    nvim_set_hl(
      'WhichKeyNormal',
      { fg = colors.base01, bg = colors.base4 },
      { transparent = config.transparent.whichkey and config.transparent.enabled }
    )
    nvim_set_hl('WhichKey', { link = 'Property' })
    nvim_set_hl('WhichKeyDesc', { link = 'String' })
    nvim_set_hl('WhichKeySeparator', { link = 'Keyword' })
    nvim_set_hl('WhichKeyGroup', { link = 'Constant' })
  end

  if config.plugins.dashboard then
    nvim_set_hl('DashboardHeader', { fg = colors.magenta })
    nvim_set_hl('DashboardFooter', { fg = colors.violet })
    nvim_set_hl('DashboardDesc', { link = 'Directory' })
    nvim_set_hl('DashboardKey', { link = 'Keyword' })
    nvim_set_hl('DashboardIcon', { link = 'Directory' })
    nvim_set_hl('DashboardShotCut', { fg = colors.base00 })
  end

  if config.plugins.gitsigns then
    nvim_set_hl(
      'GitSignsAdd',
      { fg = colors.git_add, bg = signcolumn.bg },
      { transparent = config.transparent.enabled }
    )
    nvim_set_hl('GitSignsChange', { fg = colors.git_modify, bg = signcolumn.bg }, {
      transparent = config.transparent.enabled,
    })
    nvim_set_hl('GitSignsDelete', { fg = colors.git_delete, bg = signcolumn.bg }, {
      transparent = config.transparent.enabled,
    })
  end

  if config.plugins.telescope then
    nvim_set_hl('TelescopeSelection', { fg = colors.blue, bg = colors.mix_blue })
    nvim_set_hl('TelescopeSelectionCaret', { fg = colors.blue, bg = colors.mix_blue })
    nvim_set_hl('TelescopeMultiIcon', { fg = colors.blue })
    nvim_set_hl(
      'TelescopeNormal',
      { fg = colors.base0, bg = colors.base4 },
      { transparent = config.transparent.telescope and config.transparent.enabled }
    )
    nvim_set_hl('TelescopePreviewNormal', { link = 'TelescopeNormal' })
    nvim_set_hl('TelescopePromptNormal', { link = 'TelescopeNormal' })
    nvim_set_hl('TelescopeResultsNormal', { link = 'TelescopeNormal' })
    nvim_set_hl('TelescopeBorder', { link = 'FloatBorder' })
    nvim_set_hl('TelescopePromptBorder', { link = 'TelescopeBorder' })
    nvim_set_hl('TelescopeResultsBorder', { link = 'TelescopeBorder' })
    nvim_set_hl('TelescopePreviewBorder', { link = 'TelescopeBorder' })
    nvim_set_hl('TelescopeTitle', { link = 'FloatTitle' })
    nvim_set_hl('TelescopePromptTitle', { link = 'TelescopeTitle' })
    nvim_set_hl('TelescopeResultsTitle', { link = 'TelescopeTitle' })
    nvim_set_hl('TelescopePreviewTitle', { link = 'TelescopeTitle' })
    nvim_set_hl('TelescopeMatching', { link = 'IncSearch' })
    nvim_set_hl('TelescopePreviewMatch', { link = 'TelescopeMatching' })
    nvim_set_hl('TelescopePromptCounter', { link = 'NonText' })
    nvim_set_hl('TelescopePromptPrefix', { fg = colors.orange })
  end

  if config.plugins.noice then
    nvim_set_hl('NoiceFormatProgressTodo', { fg = colors.diag_ok, bg = colors.mix_green })
    nvim_set_hl('NoiceFormatProgressDone', { fg = colors.diag_ok, reverse = true })
    nvim_set_hl('NoiceLspProgressSpinner', { fg = colors.diag_ok })
    nvim_set_hl('NoiceLspProgressClient', { fg = colors.diag_ok })
    nvim_set_hl('NoiceLspProgressTitle', { link = 'Title' })
    nvim_set_hl('NoiceCmdlineIcon', { link = 'WinSeparator' })
    nvim_set_hl('NoiceCmdlinePopupBorder', { link = 'WinSeparator' })
    nvim_set_hl('NoiceCmdlinePopupTitle', { link = 'Title' })
  end

  if config.plugins.hop then
    nvim_set_hl('HopNextKey', { fg = colors.magenta })
    nvim_set_hl('HopNextKey1', { fg = colors.blue })
    nvim_set_hl('HopUnmatched', { fg = colors.base1 })
  end

  if config.plugins.ministatusline then
    nvim_set_hl('MiniStatuslineModeNormal', { fg = colors.base3, bg = colors.blue })
    nvim_set_hl('MiniStatuslineModeInsert', { fg = colors.base3, bg = colors.green })
    nvim_set_hl('MiniStatuslineModeVisual', { fg = colors.base3, bg = colors.magenta })
    nvim_set_hl('MiniStatuslineModeReplace', { fg = colors.base3, bg = colors.red })
    nvim_set_hl('MiniStatuslineModeCommand', { fg = colors.base3, bg = colors.orange })
    nvim_set_hl('MinistatusLineFileName', { fg = colors.base0, bg = colors.base2 })
    nvim_set_hl('MiniStatuslineDevinfo', { fg = colors.base0, bg = colors.base2 })
    nvim_set_hl('MiniStatuslineFileinfo', { fg = colors.base0, bg = colors.base2 })
    nvim_set_hl('MiniStatuslineInactive', { fg = colors.base1, bg = colors.base3 })
  end

  if config.plugins.minitabline then
    nvim_set_hl('MiniTablineCurrent', { fg = colors.base0, bg = colors.base3 })
    nvim_set_hl('MiniTablineVisible', { fg = colors.base0, bg = colors.base3 })
    nvim_set_hl('MiniTablineHidden', { fg = colors.base1, bg = colors.base3 })
    nvim_set_hl('MiniTablineModifiedCurrent', { link = 'MiniTabLineCurrent' })
    nvim_set_hl('MiniTablineModifiedVisible', { link = 'MiniTablineVisible' })
    nvim_set_hl('MiniTablineModifiedHidden', { link = 'MiniTablineHidden' })
    nvim_set_hl('MiniTablineFill', { fg = colors.base0, bg = colors.base2 })
    nvim_set_hl('MiniTablineTabpagesection', { fg = colors.base00, bg = colors.base2 })
  end

  if config.plugins.ministarter then
    nvim_set_hl('MiniStarterCurrent', { link = 'CursorLine' })
    nvim_set_hl('MiniStarterHeader', { fg = colors.base1 })
    nvim_set_hl('MiniStarterFooter', { fg = colors.violet })
    nvim_set_hl('MiniStarterItem', { fg = colors.base00 })
    nvim_set_hl('MiniStarterItemBullet', { fg = colors.blue })
    nvim_set_hl('MiniStarterItemPrefix', { fg = colors.blue })
    nvim_set_hl('MiniStarterSection', { link = 'Title' })
    nvim_set_hl('MiniStarterQuery', { fg = colors.blue, bold = true })
  end

  if config.plugins.minicursorword then
    nvim_set_hl('MiniCursorword', { link = 'Visual' })
  end

  if config.plugins.notify then
    nvim_set_hl('NotifyBackground', { bg = colors.base3 })
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
    nvim_set_hl('NotifyERRORBody', { fg = colors.diag_error })
    nvim_set_hl('NotifyWARNBody', { fg = colors.diag_warning })
    nvim_set_hl('NotifyINFOBody', { fg = colors.diag_info })
    nvim_set_hl('NotifyDEBUGBody', { fg = colors.magenta })
    nvim_set_hl('NotifyTRACEBody', { fg = colors.blue })
  end

  if config.plugins.rainbowdelimiters then
    nvim_set_hl('RainbowDelimiterRed', { fg = colors.red })
    nvim_set_hl('RainbowDelimiteYellow', { fg = colors.yellow })
    nvim_set_hl('RainbowDelimiterBlue', { fg = colors.blue })
    nvim_set_hl('RainbowDelimiterOrange', { fg = colors.orange })
    nvim_set_hl('RainbowDelimiterGreen', { fg = colors.green })
    nvim_set_hl('RainbowDelimiterViolet', { fg = colors.violet })
    nvim_set_hl('RainbowDelimiterCyan', { fg = colors.cyan })
  end

  if config.plugins.bufferline and config.transparent.enabled then
    local background = color.shade(colors.base2, 2)
    nvim_set_hl('BufferLineFill', { bg = background })
    nvim_set_hl('BufferLineBufferSelected', { fg = colors.base01, bold = true })
    nvim_set_hl('BufferLineSeparator', { fg = background })
    nvim_set_hl('BufferLineSeparatorSelected', { fg = background })
    nvim_set_hl('BufferLineSeparatorVisible', { fg = background })
  end

  if config.plugins.lazy then
    nvim_set_hl('LazyNormal', { fg = colors.base0, bg = colors.base4 }, {
      transparent = config.transparent.lazy and config.transparent.enabled,
    })
    nvim_set_hl('LazyH1', { fg = colors.blue, bold = true })
    nvim_set_hl('LazyButton', { fg = colors.green, bg = colors.mix_green })
    nvim_set_hl('LazyButtonActive', { fg = colors.yellow, bg = colors.mix_yellow })
    nvim_set_hl('LazyReasonStart', { fg = colors.yellow })
    nvim_set_hl('LazyReasonEvent', { fg = colors.red })
  end

  if config.plugins.rendermarkdown then
    nvim_set_hl('RenderMarkdownH1Bg', { fg = colors.red, bg = colors.mix_red })
    nvim_set_hl('RenderMarkdownH2Bg', { fg = colors.magenta, bg = colors.mix_magenta })
    nvim_set_hl('RenderMarkdownH3Bg', { fg = colors.yellow, bg = colors.mix_yellow })
    nvim_set_hl('RenderMarkdownH4Bg', { fg = colors.orange, bg = colors.mix_orange })
    nvim_set_hl('RenderMarkdownH5Bg', { fg = colors.blue, bg = colors.mix_blue })
    nvim_set_hl('RenderMarkdownH5Bg', { fg = colors.blue, bg = colors.mix_blue })
  end

  if config.plugins.neogit then
    nvim_set_hl('NeogitBranch', { fg = colors.magenta })
    nvim_set_hl('NeogitRemote', { fg = colors.violet })
    nvim_set_hl('NeogitHunkHeader', { fg = colors.red, bg = colors.mix_red, bold = true })
    nvim_set_hl('NeogitHunkHeaderHighlight', { link = 'Title' })
    nvim_set_hl('NeogitDiffContextHighlight', { fg = colors.base01, bg = colors.base2 })
    nvim_set_hl('NeogitDiffContext', { fg = colors.base00, bg = colors.base3 })
    nvim_set_hl('NeogitDiffDeleteHighlight', { fg = colors.red, bg = colors.mix_red })
    nvim_set_hl('NeogitDiffDelete', { fg = colors.red })
    nvim_set_hl('NeogitDiffAddHighlight', { fg = colors.green, bg = colors.mix_green })
    nvim_set_hl('NeogitDiffAdd', { fg = colors.green })
  end

  if config.plugins.todocomments then
    nvim_set_hl('TodoFgTODO', { fg = colors.blue })
    nvim_set_hl('TodoFgWARN', { fg = colors.yellow })
    nvim_set_hl('TodoFgTEST', { fg = colors.violet })
    nvim_set_hl('TodoFgPERF', { fg = colors.magenta })
    nvim_set_hl('TodoFgNOTE', { fg = colors.cyan })
    nvim_set_hl('TodoFgHACK', { fg = colors.orange })
    nvim_set_hl('TodoFgFIX', { fg = colors.red })

    nvim_set_hl('TodoSignTODO', { fg = colors.blue })
    nvim_set_hl('TodoSignWARN', { fg = colors.yellow })
    nvim_set_hl('TodoSignTEST', { fg = colors.violet })
    nvim_set_hl('TodoSignPERF', { fg = colors.magenta })
    nvim_set_hl('TodoSignNOTE', { fg = colors.cyan })
    nvim_set_hl('TodoSignHACK', { fg = colors.orange })
    nvim_set_hl('TodoSignFIX', { fg = colors.red })

    nvim_set_hl('TodoBgTODO', { fg = colors.blue, bg = colors.mix_blue })
    nvim_set_hl('TodoBgWARN', { fg = colors.yellow, bg = colors.mix_yellow })
    nvim_set_hl('TodoBgTEST', { fg = colors.violet, bg = colors.mix_violet })
    nvim_set_hl('TodoBgPERF', { fg = colors.magenta, bg = colors.mix_magenta })
    nvim_set_hl('TodoBgNOTE', { fg = colors.cyan, bg = colors.mix_cyan })
    nvim_set_hl('TodoBgHACK', { fg = colors.orange, bg = colors.mix_orange })
    nvim_set_hl('TodoBgFIX', { fg = colors.red, bg = colors.mix_red })
  end

  if config.plugins.ale then
    nvim_set_hl('ALEErrorSign', { fg = colors.diag_error })
    nvim_set_hl('ALEWarningSign', { fg = colors.diag_warning })
  end

  if config.plugins.alpha then
    nvim_set_hl('AlphaShortcut', { fg = colors.base00 })
    nvim_set_hl('AlphaHeader', { fg = colors.magenta })
    nvim_set_hl('AlphaHeaderLabel', { fg = colors.red })
    nvim_set_hl('AlphaFooter', { fg = colors.violet })
    nvim_set_hl('AlphaButtons', { link = 'Directory' })
  end

  if config.plugins.yanky then
    nvim_set_hl('YankyPut', { link = 'Search' })
    nvim_set_hl('YankyYanked', { link = 'IncSearch' })
  end

  if config.plugins.gitgutter then
    nvim_set_hl('GitGutterAdd', { fg = colors.git_add })
    nvim_set_hl('GitGutterChange', { fg = colors.git_modify })
    nvim_set_hl('GitGutterDelete', { fg = colors.git_delete })
    nvim_set_hl('GitGutterAddLineNr', { fg = colors.git_add })
    nvim_set_hl('GitGutterChangeLineNr', { fg = colors.git_modify })
    nvim_set_hl('GitGutterDeleteLineNr', { fg = colors.git_delete })
  end

  if config.plugins.coc then
    nvim_set_hl(
      'CocErrorSign',
      { fg = colors.diag_error, bg = signcolumn.bg },
      { error_lens = config.error_lens.symbol }
    )
    nvim_set_hl(
      'CocWarningSign',
      { fg = colors.diag_warning, bg = signcolumn.bg },
      { error_lens = config.error_lens.symbol }
    )
    nvim_set_hl(
      'CocInfoSign',
      { fg = colors.diag_info, bg = signcolumn.bg },
      { error_lens = config.error_lens.symbol }
    )
    nvim_set_hl(
      'CocHintSign',
      { fg = colors.diag_hint, bg = signcolumn.bg },
      { error_lens = config.error_lens.symbol }
    )
    nvim_set_hl(
      'CocErrorVirtualText',
      { fg = colors.diag_error },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'CocWarningVirtualText',
      { fg = colors.diag_warning },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'CocInfoVirtualText',
      { fg = colors.diag_info },
      { error_lens = config.error_lens.text }
    )
    nvim_set_hl(
      'CocHintVirtualText',
      { fg = colors.diag_hint },
      { error_lens = config.error_lens.text }
    )
  end

  if config.plugins.leap then
    nvim_set_hl('LeapMatch', { fg = colors.magenta, bg = colors.mix_magenta, bold = true })
    nvim_set_hl('LeapLabel', { fg = colors.magenta, bold = true })
    nvim_set_hl('LeapBackDrop', { fg = colors.base01 })
  end

  if config.plugins.mason then
    nvim_set_hl('MasonHeader', { link = 'FloatTitle' })
    nvim_set_hl(
      'MasonNormal',
      { fg = colors.base00, bg = colors.base4 },
      { transparent = config.transparent.mason and config.transparent.enabled }
    )
    nvim_set_hl('MasonHighlight', { fg = colors.blue })
    nvim_set_hl('MasonHighlightBlock', { fg = colors.mix_blue, bg = colors.blue })
    nvim_set_hl('MasonHighlightBlockBold', { fg = colors.mix_blue, bg = colors.blue, bold = true })
  end

  if config.plugins.flash then
    nvim_set_hl('FlashMatch', { fg = colors.base01 })
    nvim_set_hl('FlashLabel', { fg = colors.yellow })
    nvim_set_hl('FlashCurrent', { fg = colors.magenta })
  end

  if config.on_highlights then
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
