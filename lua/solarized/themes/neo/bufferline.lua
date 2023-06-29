return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  -- When `termguicolors` is enabled, this plugin is designed to work automatically,
  -- deriving colours from the user's theme.
  --
  -- My attempt to fix bufferline on transparent background
  if config.transparent then
    set_hl('BufferLineFill', { bg = c.base02 })
    set_hl('BufferLineBufferSelected', { fg = c.base2, italic = true })
    set_hl('BufferLineSeparator', { fg = c.base02 })
    set_hl('BufferLineSeparatorSelected', { fg = c.base02 })
    set_hl('BufferLineSeparatorVisible', { fg = c.base02 })
  end
end
