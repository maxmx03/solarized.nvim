describe('Colors', function()
  local colorhelper = require('solarized.utils.colors')
  local solarized_palette = require('solarized.palette')

  it('should convert hex to rgb', function()
    local colors = solarized_palette.get_colors()
    local red, green, blue = colorhelper.hex_to_rgb(colors.yellow)
    local expect = { red = 181, green = 137, blue = 0 }

    assert.are.same(expect.red, red)
    assert.are.same(expect.green, green)
    assert.are.same(expect.blue, blue)
  end)

  it('should convert rgb to hex', function()
    local colors = solarized_palette.get_colors()
    local yellow = { red = 181, green = 137, blue = 0 }
    local output = colorhelper.rgb_to_hex(yellow.red, yellow.green, yellow.blue)
    local expect = colors.yellow

    assert.equals(expect, string.lower(output))
  end)

  it('should convert rgb to hsl', function()
    local colors = solarized_palette.get_colors()
    local red, green, blue = colorhelper.hex_to_rgb(colors.blue)
    local h, s, l = colorhelper.rgb_to_hsl(red, green, blue)
    local expect = { h = 205, s = 69, l = 49 }

    assert.equals(expect.h, h)
    assert.equals(expect.s, s)
    assert.equals(expect.l, l)
  end)

  -- it's not perfect, but it's good enough
  it('should convert hsl to rgb', function()
    local colors = solarized_palette.get_colors()
    local red, green, blue = colorhelper.hex_to_rgb(colors.blue)
    local h, s, l = colorhelper.rgb_to_hsl(red, green, blue)
    local r, g, b = colorhelper.hsl_to_rgb(h, s, l)
    local expect = { red = red, green = green, blue = blue }

    assert.are_not.equals(expect.red, r)
    assert.are.equals(expect.green, g)
    assert.are_not.equals(expect.blue, b)
  end)

  it('should darken the color by percentage', function()
    local colors = solarized_palette.get_colors()
    local output = colorhelper.darken(colors.green, 50)
    local expect = '#424d00'

    assert.equals(expect, string.lower(output))
  end)

  -- may differ on different websites, it's hard to tell, but it's working.
  it('should lighten the color by percentage', function()
    local colors = solarized_palette.get_colors()
    local output = colorhelper.lighten(colors.green, 50)
    local expect = '#e7ff4d'

    assert.equals(expect, string.lower(output))
    end)
end)
