local solarized = require 'solarized.colorscheme'
local utils = require 'solarized.utils'
local chromatic = require 'solarized.utils.chromatic'

function solarized.setup(user_config)
  vim.g.user_config = user_config or {}

  utils.load_colorscheme()
  solarized.colors = require(string.format('solarized.colors.%s', vim.o.background))
  solarized:override_config(user_config)
  solarized.override_colors(user_config.colors)
  local hl_theme = require(string.format('solarized.themes.%s', solarized.config.theme))
  solarized.highlights = hl_theme(solarized, chromatic)
  solarized:override_hl(user_config.highlights)
  utils.apply_colorscheme_highlights(solarized.highlights)
end

return solarized
