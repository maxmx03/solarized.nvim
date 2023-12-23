return function(c, config)
  local utils = require('solarized.utils')
  local darken = require('solarized.utils.colors').darken
  local base04 = darken(c.base03, 10)
  local set_hl = utils.set_hl

  set_hl('TelescopeSelection', { link = 'CursorLine' })
  set_hl('TelescopeSelectionCaret', { fg = c.red })
  set_hl('TelescopeMultiSelection', { link = 'Type' })
  set_hl('TelescopeMultiIcon', { fg = c.cyan })

  -- "Normal" in the floating windows created by telescope.
  set_hl(
    'TelescopeNormal',
    { fg = c.base0, bg = base04 },
    { transparent = config.transparent }
  )
  set_hl('TelescopePreviewNormal', { link = 'TelescopeNormal' })
  set_hl('TelescopePromptNormal', { link = 'TelescopeNormal' })
  set_hl('TelescopeResultsNormal', { link = 'TelescopeNormal' })

  -- Border highlight groups.
  --   Use TelescopeBorder to override the default.
  --   Otherwise set them specifically
  set_hl('TelescopeBorder', { link = 'WinSeparator' })
  set_hl('TelescopePromptBorder', { link = 'TelescopeBorder' })
  set_hl('TelescopeResultsBorder', { link = 'TelescopeBorder' })
  set_hl('TelescopePreviewBorder', { link = 'TelescopeBorder' })

  -- Title highlight groups.
  --   Use TelescopeTitle to override the default.
  --   Otherwise set them specifically
  set_hl('TelescopeTitle', { fg = c.blue, reverse = true })
  set_hl('TelescopePromptTitle', { link = 'TelescopeTitle' })
  set_hl('TelescopeResultsTitle', { link = 'TelescopeTitle' })
  set_hl('TelescopePreviewTitle', { link = 'TelescopeTitle' })

  set_hl('TelescopePromptCounter', { link = 'NonText' })

  -- Used for highlighting characters that you match.
  set_hl('TelescopeMatching', { link = 'IncSearch' })

  -- Used for the prompt prefix
  set_hl('TelescopePromptPrefix', { fg = c.magenta })
end
