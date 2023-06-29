local Math = require('solarized.utils.Math')
local M = {}

--- Convert a hexadecimal color code to RGB color values
---
--- @param hex string     The hexadecimal color code (e.g., "#RRGGBB" or "RRGGBB")
--- @return number red    The red component of the RGB color (0-255)
--- @return number green  The green component of the RGB color (0-255)
--- @return number blue   The blue component of the RGB color (0-255)
function M.hex_to_rgb(hex)
  local red = tonumber(hex:sub(2, 3), 16)
  local green = tonumber(hex:sub(4, 5), 16)
  local blue = tonumber(hex:sub(6, 7), 16)

  return red, green, blue
end

--- Convert rgb to hex
---
--- @param red number
--- @param green number
--- @param blue number
--- @return string color
function M.rgb_to_hex(red, green, blue)
  return string.format('#%02x%02x%02x', red, green, blue)
end

--- Converts RGB (Red, Green, Blue) color values to HSL (Hue, Saturation, Lightness) color values.
---
--- @param r number      The red component of the RGB color (0-255).
--- @param g number      The green component of the RGB color (0-255).
--- @param b number      The blue component of the RGB color (0-255).
--- @return number h     The hue value in degrees (0-360).
--- @return number s     The saturation value as a percentage (0-100).
--- @return number l     The lightness value as a percentage (0-100).
function M.rgb_to_hsl(r, g, b)
  -- Convert RGB values to the range 0-1
  r = r / 255
  g = g / 255
  b = b / 255

  -- Find the minimum and maximum values
  local min = math.min(r, g, b)
  local max = math.max(r, g, b)

  -- Calculate luminance (L)
  local l = (max + min) / 2

  -- Check if there is saturation
  local s
  if min == max then
    -- If min and max are equal, there is no saturation
    s = 0
  else
    if l <= 0.5 then
      s = (max - min) / (max + min)
    else
      s = (max - min) / (2 - max - min)
    end
  end

  -- Calculate hue (H)
  local h
  if max == min then
    -- If max and min are equal, it's a shade of gray (H is undefined)
    h = 0
  else
    if max == r then
      h = (g - b) / (max - min)
    elseif max == g then
      h = 2 + (b - r) / (max - min)
    else
      h = 4 + (r - g) / (max - min)
    end
    h = h / 6 -- Convert to range 0-1
    if h < 0 then
      h = h + 1
    end -- Add 1 if negative
  end

  -- Convert hue to degrees
  h = h * 360

  return Math.round(h), Math.round(s * 100), Math.round(l * 100)
end

--- Converts HSL (Hue, Saturation, Lightness) color values to RGB (Red, Green, Blue) color values.
---
--- @param h number      The hue value in degrees (0-360).
--- @param s number      The saturation value as a percentage (0-100).
--- @param l number      The lightness value as a percentage (0-100).
--- @return number red   The red component of the RGB color (0-255).
--- @return number green The green component of the RGB color (0-255).
--- @return number blue  The blue component of the RGB color (0-255).
function M.hsl_to_rgb(h, s, l)
  h = h / 360
  s = s / 100
  l = l / 100

  local function hueToRgb(p, q, t)
    if t < 0 then
      t = t + 1
    end
    if t > 1 then
      t = t - 1
    end
    if t < 1 / 6 then
      return p + (q - p) * 6 * t
    end
    if t < 1 / 2 then
      return q
    end
    if t < 2 / 3 then
      return p + (q - p) * (2 / 3 - t) * 6
    end
    return p
  end

  if s == 0 then
    local gray = Math.round(l * 255)
    return gray, gray, gray
  else
    local q = l < 0.5 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q

    local red = Math.round(hueToRgb(p, q, h + 1 / 3) * 255)
    local green = Math.round(hueToRgb(p, q, h) * 255)
    local blue = Math.round(hueToRgb(p, q, h - 1 / 3) * 255)

    return red, green, blue
  end
end

--- Darken a color by a given percentage
---
--- @param color string   The color to be darkened in any valid color format
--- @param percent number The percentage by which the color should be darkened (between 0 and 100)
--- @return string color  The resulting darkened color in the same format as the input color
function M.darken(color, percent)
  local r, g, b = M.hex_to_rgb(color)
  local h, s, l = M.rgb_to_hsl(r, g, b)

  l = l * (1 - percent / 100)

  local new_r, new_g, new_b = M.hsl_to_rgb(h, s, l)
  return M.rgb_to_hex(new_r, new_g, new_b)
end

--- Lighten a color by a given percentage
---
--- @param color string   The color to be lightened in any valid color format
--- @param percent number The percentage by which the color should be lightened (between 0 and 100)
--- @return string color  The resulting lightened color in the same format as the input color
function M.lighten(color, percent)
  local r, g, b = M.hex_to_rgb(color)
  local h, s, l = M.rgb_to_hsl(r, g, b)

  l = l + (100 - l) * (percent / 100)

  local new_r, new_g, new_b = M.hsl_to_rgb(h, s, l)
  return M.rgb_to_hex(new_r, new_g, new_b)
end

--- Blend two colors with a given alpha value
---
--- @param hex_fg string The foreground color in hexadecimal format (e.g., "#RRGGBB")
--- @param hex_bg string The background color in hexadecimal format (e.g., "#RRGGBB")
--- @param alpha number The alpha value between 0 and 1, indicating the blending ratio
--- @return string color The resulting blended color in hexadecimal format
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
