return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  -- set_hl('CmpItemAbbr') -- Highlight group for unmatched characters of each completion field.
  set_hl('CmpItemAbbrDeprecated', { fg = c.base1, strikethrough = true }) -- Highlight group for unmatched characters of each deprecated completion field.
  set_hl('CmpItemAbbrMatch', { link = 'IncSearch' }) -- Highlight group for matched characters of each completion field.
  set_hl('CmpItemAbbrMatchFuzzy', { link = 'IncSearch' }) -- Highlight group for fuzzy-matched characters of each completion field.
  -- set_hl('CmpItemKind') -- Highlight group for the kind of the field.
  -- set_hl('CmpItemMenu') -- The menu field's highlight group.

  set_hl('CmpItemKindReference', { link = 'Underlined' })
  set_hl('CmpItemKindUnit', { link = 'Number' })
  set_hl('CmpItemKindEnum', { link = 'Type' })
  set_hl('CmpItemKindField', { link = '@field' })
  set_hl('CmpItemKindClass', { link = 'Type' })
  set_hl('CmpItemKindFile', { fg = c.base0 })
  set_hl('CmpItemKindProperty', { link = '@field' })
  set_hl('CmpItemKindMethod', { link = 'Function' })
  set_hl('CmpItemKindKeyword', { link = 'Keyword' })
  set_hl('CmpItemKindFolder', { link = 'Directory' })
  set_hl('CmpItemKindSnippet', { link = 'Keyword' })
  set_hl('CmpItemKindVariable', { link = 'Identifier' })
  set_hl('CmpItemKindStruct', { link = 'Structure' })
  set_hl('CmpItemKindInterface', { link = 'Type' })
  set_hl('CmpItemKindTypeParameter', { link = 'Type' })
  set_hl('CmpItemKindEnumMember', { link = 'Constant' })
  set_hl('CmpItemKindEvent', { fg = c.base2 })
  set_hl('CmpItemKindConstructor', { link = '@constructor' })
  set_hl('CmpItemKindConstant', { link = 'Constant' })
  set_hl('CmpItemKindModule', { link = '@namespace' })
  set_hl('CmpItemKindValue', { fg = c.base2 })
  set_hl('CmpItemKindColor', { fg = c.magenta })
  set_hl('CmpItemKindFunction', { link = 'Function' })
  set_hl('CmpItemKindText', { link = 'String' })
end
