local M = {}

function M.to_hex(decimal)
  return string.format('#%06x', decimal)
end

return M
