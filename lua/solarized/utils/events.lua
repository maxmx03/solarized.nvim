local function onColorschemeChange()
  if vim.g.colors_name == 'solarized' then
    vim.api.nvim_command "lua require('solarized').setup(vim.g.user_config)"
  end
end

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = onColorschemeChange,
})
