local semantic = {}

semantic.hl = {
  ['@lsp.type.parameter'] = { link = '@parameter' },
  ['@lsp.typemod.parameter.readyonly'] = { italic = true },
}

function semantic:load(solar)
  vim.api.nvim_create_autocmd('Colorscheme', {
    callback = function()
      solar:apply_colorscheme_highlights(self.hl)
    end,
  })
end

return semantic
