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
  if config and type(config.transparent) == 'boolean' then
    self.config.transparent = config.transparent
  end

  if config and type(config.theme) then
    self.config.theme = config.theme
  end
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

return Colorscheme:new()
