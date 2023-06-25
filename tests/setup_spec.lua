describe('Solarized', function()
  it('should setup without any errors', function()
    local solarized = require('solarized')

    solarized.setup({})

    vim.cmd.colorscheme 'solarized'

    assert.equal('solarized', vim.g.colors_name)
    assert.is_true(vim.o.termguicolors)
    assert.is_true(solarized.is_configured)
  end)
end)
