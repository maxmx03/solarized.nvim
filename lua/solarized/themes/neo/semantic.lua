return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  -- Default highlight
  set_hl('@lsp.type.class', { link = 'Type' }) -- Type
  set_hl('@lsp.type.decorator', { link = 'Function' }) -- Function
  set_hl('@lsp.type.enum', { link = 'Type' }) -- Type
  set_hl('@lsp.type.enumMember', { link = 'Constant' }) -- Constant
  set_hl('@lsp.type.function', { link = 'Function' }) -- Function
  set_hl('@lsp.type.interface', { link = 'Type' }) -- Type
  set_hl('@lsp.type.macro', { link = 'Keyword' }) -- Keyword
  set_hl('@lsp.type.method', { link = 'Function' }) -- Function
  set_hl('@lsp.type.namespace', { link = 'Constant' }) -- Constant
  set_hl('@lsp.type.parameter', { link = 'Parameter' }) -- Parameter
  set_hl('@lsp.type.property', { fg = c.blue }) -- Property
  set_hl('@lsp.type.struct', { link = 'Structure' }) -- Structure
  set_hl('@lsp.type.type', { link = 'Type' }) -- Type
  set_hl('@lsp.type.typeParameter', { link = 'Type' }) -- Type
  set_hl('@lsp.type.variable', { link = 'Identifier' }) -- Identifier

  -- Extra highlight
  set_hl('@lsp.typemod.variable.defaultLibrary', { link = 'Constant' }) -- ex: "vim".api.nvim_set_hl
  set_hl('@lsp.typemod.variable.readonly', { link = 'Constant' }) -- Constant variables ex: const hello = 'Hello World'
  set_hl('@lsp.typemod.variable.global', { link = 'Constant' }) -- Global variables ex: HELLO = 'Hello World'
  set_hl('@lsp.typemod.keyword.documentation', { link = 'Keyword' }) -- documentation comments
  set_hl('@lsp.typemod.class.documentation', { link = 'Type' }) -- documentation comments
  set_hl('@lsp.typemod.property.readonly', { link = 'Constant' }) -- Ex: System."out".println()
end
