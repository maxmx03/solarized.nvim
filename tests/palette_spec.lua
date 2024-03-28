local solarized_palette = require('solarized.palette')

describe('Palette', function()
  test('Extend solarized color palette', function()
    local default_colors = solarized_palette.get_colors()
    local custom_colors = {
      blue2 = '#c7e8f3',
      purple = '#cf9aca',
      magenta2 = '#8e4162',
    }
    local output =
      solarized_palette.extend_colors(default_colors, custom_colors)
    local expect = vim.deepcopy(default_colors)
    expect.blue2 = custom_colors.blue2
    expect.purple = custom_colors.purple
    expect.magenta2 = custom_colors.magenta2

    assert.are.same(expect, output)
  end)

  test(
    'Correct any invalid colors when extending the solarized palette',
    function()
      local default_colors = solarized_palette.get_colors()
      local custom_colors = {
        white = '#aaaaaaa',
        pink = '#cf9',
        purple = '#8e4',
      }
      local output =
        solarized_palette.extend_colors(default_colors, custom_colors)
      local expect = vim.deepcopy(default_colors)
      expect.pink = '#cf9cf9'
      expect.purple = '#8e48e4'

      assert.are.same(expect, output)
    end
  )
end)
