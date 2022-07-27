local M = {}

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

function M:set_highlight(vim, neovim, vscode)
  self.highlights.vim = vim(self, self.config)
  -- self.highlights.neovim = neovim(self, self.config)
  -- self.highlights.vscode = vscode(self, self.config)
end

function M:get_highlight()
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
