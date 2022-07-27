local M = {}
M.mode = 'dark'
M.theme = 'vim'
M.transparent = false
M.style = {
  comments = { italic = true, bold = false },
  keywords = { italic = true, bold = false },
  functions = { italic = false, bold = false },
}

function M:new(object)
  object = object or {}

  self.__index = self
  setmetatable(object, self)

  return object
end

function M:get_mode()
  return self.mode
end

function M:set_mode(mode)
  if mode then
    self.mode = mode
  end
end

function M:get_theme()
  return self.theme
end

function M:set_theme(theme)
  self.theme = theme
end

function M:get_transparent()
  return self.transparent
end

function M:set_transparent(transparent)
  if transparent then
    self.transparent = transparent
  end
end

function M:get_comments_style()
  return self.style.comments
end

function M:set_comments_style(style)
  if style then
    self.style.comments = style
  end
end

function M:get_keywords_style()
  return self.style.keywords
end

function M:set_keywords_style(style)
  if style then
    self.style.keywords = style
  end
end

function M:get_functions_style()
  return self.style.functions
end

function M:set_functions_style(style)
  if style then
    self.style.functions = style
  end
end

return M
