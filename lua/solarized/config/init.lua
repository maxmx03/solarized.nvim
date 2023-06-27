---  Define and return default config
---@return table default_config
local function default_config()
  return {
    transparent = false,
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
      indentblankline = true,
      lsp = true,
      lspsaga = true,
      navic = true,
      notify = true,
      semantic = true,
      syntax = true,
      telescope = true,
      tree = true,
      treesitter = true,
    },
    highlights = {},
    colors = {},
    theme = 'default',
  }
end

return default_config
