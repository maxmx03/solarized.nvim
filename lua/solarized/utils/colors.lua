local Math = require('solarized.utils.Math')
local M = {}

function M.hex_to_rgb(hex)
  local red = tonumber(hex:sub(2, 3), 16)
  local green = tonumber(hex:sub(4, 5), 16)
  local blue = tonumber(hex:sub(6, 7), 16)

  return red, green, blue
end

function M.rgb_to_hex(red, green, blue)
  return string.format('#%02X%02X%02X', red, green, blue)
end

function M.rgb_to_hsl(red, green, blue)
  red = red / 255
  green = green / 255
  blue = blue / 255
  local cmin = math.min(red, green, blue)
  local cmax = math.max(red, green, blue)
  local delta = cmax - cmin
  local h, s, l = 0, 0, 0

  if delta == 0 then
    h = 0
  elseif cmax == red then
    h = ((green - blue) / delta) % 6
  elseif cmax == green then
    h = (blue - red) / delta + 2
  else
    h = (red - green) / delta + 4
  end

  h = Math.round(h * 60)

  if h < 0 then
    h = h + 360
  end

  -- Calculate lightness
  l = (cmax + cmin) / 2

  -- Calculate saturation
  if delta == 0 then
    s = 0
  else
    s = delta / (1 - math.abs(2 * l - 1))
  end

  -- Multiply l and s by 100
  s = Math.round(s * 100)
  l = Math.round(l * 100)

  return h, s, l
end

function M.hsl_to_rgb(h, s, l)
  s = s / 100
  l = l / 100

  local c = (1 - math.abs(2 * l - 1)) * s
  local x = c * (1 - math.abs((h / 60) % 2 - 1))
  local m = l - c / 2
  local r, g, b = 0, 0, 0

  if 0 <= h and h < 60 then
    r, g, b = c, x, 0
  elseif 60 <= h and h < 120 then
    r, g, b = x, c, 0
  elseif 120 <= h and h < 180 then
    r, g, b = 0, c, x
  elseif 180 <= h and h < 240 then
    r, g, b = 0, x, c
  elseif 240 <= h and h < 300 then
    r, g, b = x, 0, c
  elseif 300 <= h and h < 360 then
    r, g, b = c, 0, x
  end

  r = Math.round((r + m) * 255)
  g = Math.round((g + m) * 255)
  b = Math.round((b + m) * 255)

  return r, g, b
end

function M.darken(color, percent)
  local r, g, b = M.hex_to_rgb(color)
  local h, s, l = M.rgb_to_hsl(r, g, b)

  l = (l / 100) * percent

  local red, green, blue = M.hsl_to_rgb(h, s, l)

  return M.rgb_to_hex(red, green, blue)
end

function M.lighten(color, percent)
  local r, g, b = M.hex_to_rgb(color)
  local h, s, l = M.rgb_to_hsl(r, g, b)

  l = l + (100 - l) * (percent / 100)

  local red, green, blue = M.hsl_to_rgb(h, s, l)

  return M.rgb_to_hex(red, green, blue)
end

function M.blend(hex_fg, hex_bg, alpha)
  local red_bg, green_bg, blue_bg = M.hex_to_rgb(hex_bg)
  local red_fg, green_fg, blue_fg = M.hex_to_rgb(hex_fg)

  local min = math.min
  local max = math.max
  local floor = math.floor

  local function blend_channel(fg, bg)
    local blended_channel = alpha * fg + ((1 - alpha) * bg)

    return floor(min(max(0, blended_channel), 255) + 0.5)
  end

  return M.rgb_to_hex(blend_channel(red_fg, red_bg), blend_channel(green_fg, green_bg), blend_channel(blue_fg, blue_bg))
end

return M
