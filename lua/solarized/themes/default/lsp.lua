return function()
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('LspReferenceText', { link = 'Visual' }) -- used for highlighting "text" references
  set_hl('LspReferenceRead', { link = 'Visual' }) -- used for highlighting "read" references
  set_hl('LspReferenceWrite', { link = 'Visual' }) -- used for highlighting "write" references

  -- if you want to me to enable the highlight groups bellow, please send a screenshot for me to see how
  -- they look like or how to config for me to test.

  -- set_hl('LspInlayHint') -- used for highlighting inlay hints
  -- set_hl('LspCodelens') -- Used to color the virtual text of the codelens.
  -- set_hl('LspCodeLensSeparator') -- Used to color the separator between two or more code lenses.
  -- set_hl('LspSignatureActiveParameter') -- Used to highlight the active parameter in the signature help. See
end
