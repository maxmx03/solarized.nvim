local M = {}

M.highlights = {
  vim = {},
  neovim = {},
  vscode = {},
}
M.palette = {
  dark = {},
  light = {},
}

function M:new(object, config)
  object = object or {}

  self.__index = self
  setmetatable(object, self)

  self.config = config

  return object
end

function M:set_colors(dark, light)
  self.palette.dark = dark
  self.palette.light = light
end

function M:get_colors()
  local colors = self.palette[self.config.mode]

  return colors
end

function M:set_highlights_themes(themes)
  self.highlights[self.config.theme] = themes[self.config.theme](self, self.config)
end

function M:get_highlights_theme()
  return self.highlights[self.config.theme]
end

function M:is_transparent(color, color_alt)
  if self.config.transparent and color_alt then
    return color_alt
  end

  if self.config.transparent then
    return 'NONE'
  end

  return color
end

return M
