local M = {}

function M.copysign(x, y)
  if y > 0 or (y == 0 and math.atan2(y, -1) > 0) then
    return math.abs(x)
  else
    return -math.abs(x)
  end
end

function M.round(x)
  local absx, y
  absx = math.abs(x)
  y = math.floor(absx)

  if absx - y >= 0.5 then
    y = y + 1.0
  end

  return M.copysign(y, x)
end

return M
