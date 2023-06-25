local solarized_config = require('solarized.config')
local solarized_palette = require('solarized.palette')
local solarized_highlights = require('solarized.highlights')

local M = {}
M.is_configured = false
M.has_set_highlights = false
M.config = {}

--- Solarized setup
---
--- @param user_config? table The user-provided configuration to be merged.
---       - transparent (boolean): Specifies if transparency is enabled.
---       - styles (table): A table specifying various style options.
---           - comments (table): Specifies if comments should be styled.
---           - functions (table): Specifies if functions should be styled.
---           - variables (table): Specifies if variables should be styled.
---           - numbers (table): Specifies if numbers should be styled.
---           - constants (table): Specifies if constants should be styled.
---           - parameters (table): Specifies if parameters should be styled.
---           - conditionals (table): Specifies if conditionals should be styled.
---       - highlights (table): A table specifying custom highlight values.
---       - colors (table): A table specifying custom color values.
---       - theme (string): Specifies the theme to be used.
function M.setup(user_config)
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'solarized'

  if not M.is_configured then
    local default_config = solarized_config()
    M.config = vim.tbl_deep_extend('force', default_config, user_config)
    M.is_configured = true
  end

  local colors = solarized_palette.get_colors()

  if not vim.tbl_isempty(M.config.colors) then
    colors = solarized_palette.extend_colors(colors, M.config.colors)
  end

  solarized_highlights(colors, M.config)
end

return M
