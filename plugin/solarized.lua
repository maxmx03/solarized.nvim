vim.api.nvim_create_user_command('SolarizedColors', function()
  local colors = require('solarized.palette').get_colors()
  local buf = vim.api.nvim_create_buf(true, true)
  local max_length = vim.tbl_count(colors)

  local function color_desc(color)
    local colors_desc = {
      base04 = 'background tone (column/nvim-tree)',
      base03 = 'background tone (main)',
      base02 = 'background tone (highlight/menu/LineNr)',
      base01 = 'content tone (comment)',
      base00 = 'content tone (winseparator)',
      base0 = 'content tone (foreground)',
      base1 = 'content tone (statusline/tabline)',
      base2 = 'background tone (main)',
      base3 = 'background tone (highlight)',
    }
    local desc = colors_desc[color]

    if not desc then
      return ''
    end

    return desc
  end

  local line = 0
  for color, hex in pairs(colors) do
    if color ~= 'none' and color ~= 'name' and color ~= 'background' then
      vim.api.nvim_buf_set_lines(buf, line, (line + 1), false, {
        color .. string.rep('.', max_length - #color) .. ' = "' .. tostring(hex) .. '" ' .. color_desc(color),
      })
      line = line + 1
    end
  end

  vim.api.nvim_set_option_value('modifiable', false, { buf = buf })
  vim.api.nvim_set_option_value('filetype', 'Solarized', { buf = buf })
  vim.api.nvim_buf_set_name(buf, 'Solarized Colors')
  vim.api.nvim_win_set_buf(0, buf)
end, {})
