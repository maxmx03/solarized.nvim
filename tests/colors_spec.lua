local colorhelper = require('solarized.utils.colors')
local solarized_palette = require('solarized.palette')

describe('Color Conversions', function()
  test('Convert hex to RGB', function()
    local colors = solarized_palette.get_colors()
    local red, green, blue = colorhelper.hex_to_rgb(colors.yellow)
    local expect = { red = 181, green = 137, blue = 0 }

    assert.are.same(expect.red, red)
    assert.are.same(expect.green, green)
    assert.are.same(expect.blue, blue)
  end)

  test('Convert RGB to hex', function()
    local colors = solarized_palette.get_colors()
    local yellow = { red = 181, green = 137, blue = 0 }
    local output = colorhelper.rgb_to_hex(yellow.red, yellow.green, yellow.blue)
    local expect = colors.yellow

    assert.equals(expect, string.lower(output))
  end)

  test('Darken the color by percentage', function()
    local colors = solarized_palette.get_colors()
    local output = colorhelper.darken(colors.green, 100)
    local expect = '#000000'
    assert.equals(expect, output)
  end)

  test('Lighten the color by percentage', function()
    local colors = solarized_palette.get_colors()
    local output = colorhelper.lighten(colors.green, 100)
    local expect = '#ffffff'
    assert.equals(expect, output)
  end)

  test('Blend colors', function()
    local blend = require('solarized.utils.colors').blend
    local alpha = 0.15
    local expect = '#27383f'

    local output = blend('#73daca', '#1a1b26', alpha)

    assert.equals(output, expect)
  end)
end)
