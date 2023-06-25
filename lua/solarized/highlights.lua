local function custom_hl(highlights)
  local utils = require('solarized.utils')
  local get_hl = utils.get_hl

  for highlight_name, highlight_value in pairs(highlights) do
    local highlight = get_hl(highlight_name)

    local val = vim.tbl_extend('force', highlight, highlight_value)

    vim.api.nvim_set_hl(0, highlight_name, val)
  end
end

return function(colors, config)
  if string.match(config.theme, '[neo]+') == 'neo' then
    for highlight, enabled in pairs(config.enables) do
      if enabled then
        local highlights = require('solarized.themes.neo.' .. highlight)

        highlights(colors, config)
      end
    end

    if type(config.highlights) == 'table' and not vim.tbl_isempty(config.highlights) then
      custom_hl(config.highlights)
    elseif type(config.highlights) == 'function' then
      custom_hl(config.highlights(colors))
    end
  end
end
