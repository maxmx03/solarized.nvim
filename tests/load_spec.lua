local utils = require('solarized.utils.test')
local to_hex = utils.to_hex

describe('Initialization', function()
  setup(function()
    vim.o.background = 'light'
    vim.cmd.colorscheme('solarized')
  end)

  test('Loads without encountering any errors', function()
    assert.equal('solarized', vim.g.colors_name)
    assert.is_true(vim.o.termguicolors)
  end)

  test('Background is set to light', function()
    local output = vim.api.nvim_get_hl(0, { name = 'Normal' })
    local expect = '#fdf6e3'

    assert.equals(expect, to_hex(output.bg))
  end)

  test('Selenized is being loaded', function()
    require('solarized').setup({ palette = 'selenized' })
    vim.cmd.colorscheme('solarized')
    local output = vim.api.nvim_get_hl(0, { name = 'Normal' })
    local expect = '#fbf3db'

    assert.equals(expect, to_hex(output.bg))
  end)
end)
