local utils = {}

function utils.set_highlights(highlight_groups)
  for group_name, group in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group_name, { fg = group.fg or 'NONE', bg = group.bg or 'NONE' })
  end
end

return utils
