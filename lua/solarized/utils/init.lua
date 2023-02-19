local utils = {}

function utils.apply_colorscheme_highlights(highlight_groups)
  for group_name, group in pairs(highlight_groups) do
    if type(group) == 'table' then
      local val = {}

      if group.fg ~= nil then
        val.fg = group.fg
      end

      if group.bg ~= nil then
        val.bg = group.bg
      end

      val = vim.tbl_deep_extend('force', val, group)

      vim.api.nvim_set_hl(0, group_name, val)
    end
  end
end

function utils.load_colorscheme()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'solarized'
end

return utils
