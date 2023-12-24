local palette = require('solarized.palette')
local solarized = require('solarized.highlights')
local colorhelper = require('solarized.utils.colors')
local utils = require('solarized.utils')

local M = {}

M.config = nil
M.colors = nil

---  Define and return default config
---@return table default_config
function M.default_config()
  return {
    transparent = false,
    palette = 'solarized', -- selenized
    styles = {
      comments = {},
      functions = {},
      variables = {},
      numbers = {},
      constants = {},
      parameters = {},
      keywords = {},
      types = {},
    },
    enables = {
      bufferline = true,
      cmp = true,
      diagnostic = true,
      dashboard = true,
      editor = true,
      gitsign = true,
      hop = true,
      indentblankline = true,
      lsp = true,
      lspsaga = true,
      navic = true,
      neogit = true,
      neotree = true,
      notify = true,
      noice = true,
      semantic = true,
      syntax = true,
      telescope = true,
      tree = true,
      treesitter = true,
      todo = true,
      whichkey = true,
      mini = true,
    },
    highlights = {},
    colors = {},
    theme = 'default',
    autocmd = true,
  }
end

function M.load()
  if vim.g.colors_name then vim.cmd('hi clear') end

  if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

  vim.o.termguicolors = true
  vim.g.colors_name = 'solarized'

  local colors = {}

  colors = palette.get_colors()
  solarized.highlights(M.colors or colors, M.config or M.default_config())
end

--- Solarized setup
---
--- @param opts? table The user-provided configuration to be merged.
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
---       - enables (table): A table specifying plugins to be enabled or disabled
---       - theme (string): Specifies the theme to be used.
function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', M.default_config(), opts or {})
  local colors = palette.get_colors()

  utils.on_config({
    tbl = function()
      M.colors = palette.extend_colors(colors, M.config.colors)
    end,
    fnc = function()
      M.colors =
        palette.extend_colors(colors, M.config.colors(colors, colorhelper))
    end,
  }, M.config.colors)
end

return M
