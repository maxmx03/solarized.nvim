return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  -- Float window
  set_hl('SagaNormal', { link = 'Pmenu' })
  set_hl(
    'TitleString',
    { fg = c.orange, bold = true, bg = c.base02 },
    { transparent = config.transparent }
  )

  -- Outline
  set_hl('OutlineIndent', { fg = c.green })

  set_hl('SagaWinbarModule', { link = '@namespace' })
  set_hl('SagaWinbarInterface', { link = 'Type' })
  set_hl('SagaWinbarConstructor', { link = '@constructor' })
  set_hl('SagaWinbarStruct', { link = 'Structure' })
  set_hl('SagaWinbarObject', { link = '@field' })
  set_hl('SagaWinbarUnit', { link = 'Number' })
  set_hl('SagaWinbarFile', { fg = c.base0 })
  set_hl('SagaWinbarSnippet', { link = 'Keyword' })
  set_hl('SagaWinbarText', { fg = c.base1 })
  set_hl('SagaWinbarTypeAlias', { link = 'Type' })
  set_hl('SagaWinbarEvent', { fg = c.base2 })
  set_hl('SagaWinbarParameter', { link = '@parameter' })
  set_hl('SagaWinbarKey', { link = '@field' })
  set_hl('SagaWinbarValue', { fg = c.base2 })
  set_hl('SagaWinbarMacro', { link = 'Macro' })
  set_hl('SagaWinbarNumber', { link = 'Number' })
  set_hl('SagaWinbarConstant', { link = 'Constant' })
  set_hl('SagaWinbarFunction', { link = 'Function' })
  set_hl('SagaWinbarEnum', { link = 'Type' })
  set_hl('SagaWinbarField', { link = '@field' })
  set_hl('SagaWinbarProperty', { link = '@field' })
  set_hl('SagaWinbarMethod', { link = 'Function' })
  set_hl('SagaWinbarClass', { link = 'Type' })
  set_hl('SagaWinbarFolder', { link = 'Directory' })
  set_hl('SagaWinbarPackage', { link = 'Directory' })
  set_hl('SagaWinbarStaticMethod', { link = 'Function' })
  set_hl('SagaWinbarTypeParameter', { link = 'Type' })
  set_hl('SagaWinbarEnumMember', { link = 'Constant' })
  set_hl('SagaWinbarOperator', { link = 'Operator' })
  set_hl('SagaWinbarNull', { link = 'Constant' })
  set_hl('SagaWinbarNamespace', { link = '@namespace' })
  set_hl('SagaWinbarArray', { link = 'Delimiter' })
  set_hl('SagaWinbarBoolean', { link = 'Boolean' })
  set_hl('SagaWinbarString', { link = 'String' })
  set_hl('SagaWinbarVariable', { link = 'Identifier' })
  set_hl('SagaWinbarFilename', { fg = c.base0 })
  set_hl('SagaWinbarFolderName', { fg = c.base0 })
  set_hl('SagaWinbarFileIcon', { link = 'Directory' })
  set_hl('SagaWinbarSep', { link = 'Keyword' })
end
