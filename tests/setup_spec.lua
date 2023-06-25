describe('Solarized', function()
  it('should setup without any errors', function()
    local solarized = require('solarized')

    vim.cmd.colorscheme('solarized')

    assert.equal('solarized', vim.g.colors_name)
    assert.is_true(vim.o.termguicolors)
    assert.is_true(solarized.is_configured)
  end)

  it('should change the background to light', function()
    local tohex = function(decimal)
      return string.format('#%06x', decimal)
    end

    vim.o.background = 'light'

    local output = vim.api.nvim_get_hl(0, { name = 'Normal' })
    assert.equals('#fdf6e3', tohex(output.bg))

    vim.cmd.colorscheme('solarized')
  end)
end)
