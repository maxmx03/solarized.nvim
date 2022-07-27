local M= {}

M.mode = 'dark'
M.theme = 'vim'
M.transparent = false
M.highlights = {
  vim = {},
  neovim = {},
  vscode = {},
}
M.palette = {
  dark = {
    --{{{ colors
    -- fg - foreground
    -- bg - background
    -- primary - main color
    -- secondary - secondary color
    -- disabled - comments
    -- blue - commom
    -- yellow - commom
    -- green - commom
    -- cyan - commom
    -- violet - commom
    -- magenta - commom
    -- orange - commom
    -- red - commom
    -- info - diagnostic
    -- warning - diagnostic
    -- error - diagnostic
    -- hint - diagnostic
    -- added - git
    -- changed - git
    -- removed - git
    -- deleted - git
    --}}}
  },
  light = {},
}

function M:new(object)
  object = object or {}

  self.__index = self
  setmetatable(object, self)

  return object
end

function M:setPalette(dark, light)
  self.dark = dark
  self.light = light
end

function M:getPalette()
  return self.palette
end

function M:setColors(dark, light)
  self.palette.dark = dark
  self.palette.light = light
end

function M:getColors()
  local colors = self.palette[self.mode]

  return colors
end

function M:setHighlights(vim, neovim, vscode)
  self.highlights.vim = vim
  self.highlights.neovim = neovim
  self.highlights.vscode = vscode
end

function M:getHighlight()
  return self.highlights[self.theme]
end

function M:getTransparent()
  return self.transparent
end

function M:setTransparent(transparent)
  self.transparent = transparent
end

return M
