local utils = {}

function utils.set_highlights(highlight_groups)
  for group_name, group in pairs(highlight_groups) do
    local val = {
      fg = group.fg or 'NONE',
      bg = group.bg or 'NONE',
      sp = group.sp or nil,
      bold = group.bold or false,
      italic = group.italic or false,
      reverse = group.reverse or false,
      underline = group.underline or false,
      undercurl = group.undercurl or false,
      strikethrough = group.strikethrough or false,
      link = group.link or nil,
    }

    vim.api.nvim_set_hl(0, group_name, val)
  end
end

return utils
