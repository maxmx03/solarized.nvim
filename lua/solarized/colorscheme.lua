local chromatic = require 'solarized.utils.chromatic'

local Colorscheme = {}

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

function Colorscheme:override_colors(c)
  if c and type(c) == 'function' then
    local colors = c(self.colors, chromatic.darken, chromatic.lighten, chromatic.blend)

    self.colors = vim.tbl_extend('force', self.colors, colors)
  elseif c and type(c) == 'table' then
    self.colors = vim.tbl_extend('force', self.colors, c)
  end
end

function Colorscheme:override_hl(hl)
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

function Colorscheme:setup(t)
  self.load()
  self.colors = require(string.format('solarized.colors.%s', vim.o.background))

  local user_config = t or {}

  if not vim.tbl_isempty(user_config) then
    self:set_config(user_config.config)
    self:override_colors(user_config.colors)
  end

  local hl_theme = require(string.format('solarized.themes.%s_theme', self.config.theme))
  self.highlights = hl_theme(self, chromatic)
  self:override_hl(user_config.highlights)

  self:apply_colorscheme_highlights()
end

return Colorscheme:new()
