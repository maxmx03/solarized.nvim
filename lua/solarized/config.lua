---@class solarized.styles
---@field types? vim.api.keyset.highlight
---@field functions? vim.api.keyset.highlight
---@field parameters? vim.api.keyset.highlight
---@field comments? vim.api.keyset.highlight
---@field strings? vim.api.keyset.highlight
---@field keywords? vim.api.keyset.highlight
---@field variables? vim.api.keyset.highlight
---@field constants? vim.api.keyset.highlight

---@class solarized.plugins

---@class solarized.config
---@field transparent? boolean
---@field on_highlights? fun(colors: solarized.palette, color: solarized.color): solarized.highlights
---@field on_colors? fun(colors: solarized.palette, color: solarized.color): solarized.palette
---@field styles? solarized.styles
---@field palette? "solarized" | "selenized"
---@field plugins? solarized.plugins
return {
  transparent = false,
  on_highlights = nil,
  on_colors = nil,
  palette = 'solarized',
  styles = {
    types = {},
    functions = {},
    parameters = {},
    comments = {},
    strings = {},
    keywords = {},
    variables = {},
    constants = {},
  },
  plugins = {
    ['nvim-treesitter'] = true,
    ['nvim-lspconfig'] = true,
    ['nvim-navic'] = true,
    ['nvim-cmp'] = true,
    ['indent-blankline.nvim'] = true,
    ['neo-tree.nvim'] = true,
    ['nvim-tree.lua'] = true,
    ['which-key.nvim'] = true,
    ['dashboard-nvim'] = true,
    ['gitsigns.nvim'] = true,
    ['telescope.nvim'] = true,
    ['noice.nvim'] = true,
    ['hop.nvim'] = true,
    ['mini.statusline'] = true,
    ['mini.tabline'] = true,
    ['mini.starter'] = true,
    ['mini.cursorword'] = true,
    ['nvim-notify'] = true,
    ['rainbow-delimiters'] = true,
  },
}
