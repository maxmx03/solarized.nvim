local function onColorSchemeChange()
  if vim.g.colors_name == 'solarized' then
    vim.api.nvim_command "lua require('solarized'):setup()"
  end
end

local function deleteAutocmdById()
  vim.api.nvim_del_autocmd(vim.g.solarized_au_id)
end

vim.g.solarized_au_id = vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = onColorSchemeChange,
})

vim.api.nvim_create_autocmd('ColorSchemePre', {
  pattern = '*',
  callback = deleteAutocmdById,
})
