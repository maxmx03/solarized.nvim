local nvim_get_hl = require('solarized.utils').nvim_get_hl

describe('solarized.setup', function()
  setup(function()
    vim.o.background = 'light'
    ---@type solarized
    local solarized = require 'solarized'

    solarized.setup {
      transparent = true,
      styles = {
        strings = { italic = true },
        comments = { bold = true },
      },
      on_colors = function()
        return {
          mycolor = '#ffffff',
        }
      end,
      on_highlights = function(colors)
        return {
          ---@diagnostic disable-next-line: undefined-field
          CustomHighlight = { fg = colors.mycolor },
        }
      end,
    }
    vim.cmd 'colorscheme solarized'
  end)

  test('transparent', function()
    local normal = nvim_get_hl 'Normal'
    assert.falsy(normal.bg)
  end)

  test('on_colors and on_highlight', function()
    local user_group = nvim_get_hl 'CustomHighlight'
    local expected = { fg = '#FFFFFF' }
    assert.are.same(expected, user_group)
  end)

  test('styles', function()
    local strings = nvim_get_hl 'String'
    local comments = nvim_get_hl 'Comment'
    assert.True(strings.italic)
    assert.True(comments.bold)
  end)
end)
