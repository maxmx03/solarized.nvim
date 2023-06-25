describe('User', function()
  local solarized = require('solarized')
  local solarized_palette = require('solarized.palette')
  local function tohex(decimal)
    return string.format('#%06x', decimal)
  end

  solarized.setup({
    colors = {
      fg = '#c7e8f3',
      bg = '#000',
    },
    styles = {
      comments = { italic = false, bold = true, underline = true },
    },
    highlights = function(c)
      return {
        Normal = { fg = c.fg, bg = c.bg },
        Function = { italic = false },
      }
    end,
  })

  it('should be able to customize hl groups with colors defined by the user', function()
    local output = vim.api.nvim_get_hl(0, { name = 'Normal' })

    assert.equals('#c7e8f3', tohex(output.fg))
    assert.equals('#000000', tohex(output.bg))
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
