local nvim_get_hl = require('solarized.utils').nvim_get_hl

describe('solarized.load', function()
  setup(function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'solarized'
  end)

  test('name', function()
    local expected = 'solarized'
    assert.equal(expected, vim.g.colors_name)
  end)

  test('default config', function()
    local config = require 'solarized.config'
    assert.True(type(config) == 'table')
  end)

  test('set_highlight', function()
    local Comment = nvim_get_hl 'Comment'
    assert.True('#586E75' == Comment.fg)
  end)
end)
