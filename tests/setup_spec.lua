local solarized_palette = require('solarized.palette')
local utils = require('solarized.utils.test')
local to_hex = utils.to_hex

describe('Setup', function()
  setup(function()
    local solarized = require('solarized')

    solarized.setup({
      theme = 'neo',
      colors = function(c, helper)
        return {
          fg = '#c7e8f3',
          bg = '#000',
          yellow2 = helper.darken(c.yellow, 20),
        }
      end,
      styles = {
        comments = { italic = false, bold = true, underline = true },
        functions = { italic = true },
      },
      highlights = function(c)
        return {
          Normal = { fg = c.fg, bg = c.bg },
          Function = { italic = false },
          Type = { fg = c.yellow2 },
          ['@function.builtin'] = { link = 'Special' },
        }
      end,
    })

    vim.cmd.colorscheme('solarized')
  end)

  test('Customizing Highlight Groups', function()
    local colors = solarized_palette.get_colors()
    local output1 = vim.api.nvim_get_hl(0, { name = 'Normal' })
    local output2 = vim.api.nvim_get_hl(0, { name = 'Function' })

    assert.equals('#c7e8f3', to_hex(output1.fg))
    assert.equals('#000000', to_hex(output1.bg))
    assert.are_not.same(colors.yellow, to_hex(output2.fg))
  end)

  test('Changing Comment Style', function()
    local output = vim.api.nvim_get_hl(0, { name = 'Comment' })

    assert.is_true(output.bold)
    assert.is_true(output.underline)
    assert.is_nil(output.italic)
  end)

  test('Changing  Function Style', function()
    local output = vim.api.nvim_get_hl(0, { name = 'Function' })

    assert.is_true(output.cterm.italic)
  end)

  test(
    'Customizable Highlight Groups Without Losing Previous Configuration',
    function()
      local output = vim.api.nvim_get_hl(0, { name = 'Function' })
      local default_colors = solarized_palette.get_colors()

      assert.is_nil(output.italic)
      assert.equals(default_colors.blue, to_hex(output.fg))
    end
  )

  test('Ability to Change the Default Theme', function()
    local colors = solarized_palette.get_colors()
    local output = vim.api.nvim_get_hl(0, { name = 'Directory' })

    assert.equals(colors.orange, to_hex(output.fg))
  end)

  test(
    'Function.builtin in linked to special, but doesnt have guifg',
    function()
      local output = vim.api.nvim_get_hl(0, { name = '@function.builtin' })
      local expected = { link = 'Special' }
      assert.are.same(expected, output)
    end
  )
end)
