---@class solarized.styles
---@field types? vim.api.keyset.highlight
---@field functions? vim.api.keyset.highlight
---@field parameters? vim.api.keyset.highlight
---@field comments? vim.api.keyset.highlight
---@field strings? vim.api.keyset.highlight
---@field keywords? vim.api.keyset.highlight
---@field variables? vim.api.keyset.highlight
---@field constants? vim.api.keyset.highlight
---@field statements? vim.api.keyset.highlight

---@class solarized.plugins
---@field treesitter? boolean
---@field lspconfig? boolean
---@field navic? boolean
---@field cmp? boolean
---@field indentblankline? boolean
---@field neotree? boolean
---@field nvimtree? boolean
---@field whichkey? boolean
---@field dashboard? boolean
---@field gitsigns? boolean
---@field telescope? boolean
---@field noice? boolean
---@field hop? boolean
---@field ministatusline? boolean
---@field minitabline? boolean
---@field ministarter? boolean
---@field minicursorword? boolean
---@field notify? boolean
---@field rainbowdelimiters? boolean
---@field bufferline? boolean
---@field lazy? boolean
---@field rendermarkdown? boolean

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
    statements = {},
    constants = {},
  },
  plugins = {
    treesitter = true,
    lspconfig = true,
    navic = true,
    cmp = true,
    indentblankline = true,
    neotree = true,
    nvimtree = true,
    whichkey = true,
    dashboard = true,
    gitsigns = true,
    telescope = true,
    noice = true,
    hop = true,
    ministatusline = true,
    minitabline = true,
    ministarter = true,
    minicursorword = true,
    notify = true,
    rainbowdelimiters = true,
    bufferline = true,
    lazy = true,
    rendermarkdown = true,
  },
}
