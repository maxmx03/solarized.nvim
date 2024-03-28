describe('Autocmd', function()
  test('Solarized Highlights is being created', function()
    vim.cmd.colorscheme('solarized')
    local todo = {
      'TODO',
      'WARN',
      'TEST',
      'PERF',
      'NOTE',
      'HACK',
      'FIX',
    }

    for _, name in pairs(todo) do
      local output = vim.api.nvim_get_hl(0, { name = 'SolarizedToken' .. name })
      assert.is_true(type(output.fg) == 'number')
    end
  end)
end)
