local function to_hex(decimal)
  if type(decimal) ~= 'number' then
    return decimal
  end
  local hex = string.format('#%06x', decimal)
  return hex:upper()
end

local function nvim_get_hl(name)
  local output = vim.api.nvim_get_hl(0, { name = name, link = false })

  local t = {}

  for key, value in pairs(output) do
    t[key] = to_hex(value)
  end

  return t
end

return {
  nvim_get_hl = nvim_get_hl,
}
