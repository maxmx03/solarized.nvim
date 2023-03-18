local chromatic = require 'solarized.utils.chromatic'

local Colorscheme = {}

Colorscheme.user_config = {}
Colorscheme.colors = {}
Colorscheme.highlights = {}
Colorscheme.config = {
  theme = 'vim',
  transparent = false,
}

function Colorscheme:new()
  local t = {}

  setmetatable(t, self)
  self.__index = self

  return t
end

function Colorscheme:set_colors(c)
  if c and type(c) == 'function' then
    local colors = c(self.colors, chromatic.darken, chromatic.lighten, chromatic.blend)

    self.colors = vim.tbl_extend('force', self.colors, colors)
  elseif c and type(c) == 'table' then
    self.colors = vim.tbl_extend('force', self.colors, c)
  end
end

function Colorscheme:set_hl(hl)
  if hl and type(hl) == 'function' then
    local highlights = hl(self.colors, chromatic.darken, chromatic.lighten, chromatic.blend)

    self.highlights = vim.tbl_extend('force', self.highlights, highlights)
  elseif hl and type(hl) == 'table' then
    self.highlights = vim.tbl_extend('force', self.highlights, hl)
  end
end

function Colorscheme:set_config(config)
  self.config = vim.tbl_extend('force', self.config, config)
end

function Colorscheme:is_transparent(color)
  if self.config.transparent then
    return 'NONE'
  end

  return color
end

function Colorscheme:is_not_transparent(color)
  if not self.config.transparent then
    return 'NONE'
  end

  return color
end

function Colorscheme:apply_colorscheme_highlights()
  for group_name, group in pairs(self.highlights) do
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

function Colorscheme.load()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'solarized'
end

function Colorscheme:apply_semantic_hl()
  local function show_unconst_caps(args)
    local token = args.data.token
    if token.type ~= 'variable' or token.modifiers.readonly then
      return
    end

    local text = vim.api.nvim_buf_get_text(args.buf, token.line, token.start_col, token.line, token.end_col, {})[1]

    if text ~= string.upper(text) then
      return
    end

    vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'Error')
  end

  local set_hl = function(name, val)
    vim.api.nvim_set_hl(0, name, val)
  end

  vim.api.nvim_create_autocmd('Colorscheme', {
    callback = function()
      set_hl('@lsp.type.parameter', { link = '@parameter' })
      set_hl('@lsp.typemod.parameter.readyonly', { italic = true })
      set_hl('@lsp.typemod.variable.readonly', { link = '@variable.builtin' })
      set_hl('@lsp.typemod.variable.defaultLibrary.typescript', { link = '@variable.builtin' })
    end,
  })

  vim.api.nvim_create_autocmd('LspTokenUpdate', {
    callback = show_unconst_caps,
  })
end

function Colorscheme:setup(t)
  self.load()
  self.colors = require(string.format('solarized.colors.%s', vim.o.background))

  if t and not vim.tbl_isempty(t) then
    self.user_config = t
  end

  if self.user_config and not vim.tbl_isempty(self.user_config) then
    if self.user_config.config and not vim.tbl_isempty(self.user_config.config) then
      self:set_config(self.user_config.config)
    end

    if self.user_config.colors and not vim.tbl_isempty(self.user_config.colors) then
      self:set_colors(self.user_config.colors)
    end
  end

  local hl_theme = require(string.format('solarized.themes.%s_theme', self.config.theme))
  self.highlights = hl_theme(self, chromatic)
  self:set_hl(self.user_config.highlights)

  self:apply_colorscheme_highlights()

  if self.config.theme ~= 'vim' then
    self:apply_semantic_hl()
  end
end

return Colorscheme:new()
