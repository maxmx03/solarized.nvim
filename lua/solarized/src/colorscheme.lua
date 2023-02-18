local M = {}

M.colors = {}
M.config = {
  mode = 'dark',
  theme = 'vim',
  transparent = false,
}

function M:new()
  local t = {}

  self.__index = self
  setmetatable(t, self)

  return t
end

function M:is_transparent(color)
  if self.config.transparent then
    return 'NONE'
  end

  return color
end

function M:is_not_transparent(color)
  if not self.config.transparent then
    return 'NONE'
  end

  return color
end

local solarized = M:new()

return solarized
