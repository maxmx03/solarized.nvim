describe('User', function()
  local solarized = require('solarized')
  local solarized_palette = require('solarized.palette')
  local function tohex(decimal)
    return string.format('#%06x', decimal)
  end

  solarized.setup({
    colors = function(c, helper)
      return {
        fg = '#c7e8f3',
        bg = '#000',
        yellow2 = helper.darken(c.yellow, 20),
      }
    end,
    styles = {
      comments = { italic = false, bold = true, underline = true },
    },
    highlights = function(c)
      return {
        Normal = { fg = c.fg, bg = c.bg },
        Function = { italic = false },
        Type = { fg = c.yellow2 },
      }
    end,
  })

  it('should be able to customize hl groups with colors defined by the user', function()
    local colors = solarized_palette.get_colors()
    local output1 = vim.api.nvim_get_hl(0, { name = 'Normal' })
    local output2 = vim.api.nvim_get_hl(0, { name = 'Function' })

    assert.equals('#c7e8f3', tohex(output1.fg))
    assert.equals('#000000', tohex(output1.bg))
    assert.are_not.same(colors.yellow, tohex(output2.fg))
  end)

  it('should be able to change hl group styles', function()
    local output = vim.api.nvim_get_hl(0, { name = 'Comment' })

    assert.is_true(output.bold)
    assert.is_true(output.underline)
    assert.is_nil(output.italic)
  end)

  it('should be able to customize hl group without lose colors defined by colorscheme', function()
    local output = vim.api.nvim_get_hl(0, { name = 'Function' })
    local default_colors = solarized_palette.get_colors()

    assert.is_nil(output.italic)
    assert.equals(default_colors.blue, tohex(output.fg))
  end)
end)
