---@diagnostic disable: cast-local-type
local M = {}

function M.set_highlights(highlight_groups)
  for group_name, group in pairs(highlight_groups) do
    local val = {
      fg = 'NONE',
      bg = 'NONE',
    }

    val = vim.tbl_extend('force', val, group)

    vim.api.nvim_set_hl(0, group_name, val or {})
  end
end

local function removeString(str, pattern)
  return string.gsub(str, pattern, '')
end

local function tohexa(str)
  return '0x' .. str
end

local function hex2rgb(hex)
  hex = removeString(hex, '#')

  local r = string.sub(hex, 1, 2)
  local g = string.sub(hex, 3, 4)
  local b = string.sub(hex, 5, 6)

  r = tonumber(tohexa(r))
  g = tonumber(tohexa(g))
  b = tonumber(tohexa(b))

  return r, g, b
end

local function rgb2hex(red, green, blue)
  return string.format('#%.2X%.2X%.2X', red, green, blue)
end

function M.darken(color, amount)
  amount = amount or 5
  local r, g, b = hex2rgb(color)

  r = math.floor(r / amount)
  g = math.floor(g / amount)
  b = math.floor(b / amount)

  return rgb2hex(r, g, b)
end

return M
