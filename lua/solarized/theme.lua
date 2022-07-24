-- {{{ solarized colors
-- {{{ dark
-- base03    #002b36 background
-- base02    #073642 background highlights
-- base01    #586e75 comments / secondary content
-- base0     #839496 foreground / body text
-- base1     #93a1a1 foreground / emphasized content
-- }}}
-- {{{ light
-- base3     #fdf6e3 background
-- base2     #eee8d5 background highlights
-- base1     #93a1a1 comments / secondary content
-- base00    #657b83 foreground / body text
-- base01    #586e75 foreground / emphasized content
-- }}}
-- {{{ commom colors
-- yellow    #b58900
-- orange    #cb4b16
-- red       #dc322f
-- magenta   #d33682
-- violet    #6c71c4
-- blue      #268bd2
-- cyan      #2aa198
-- green     #859900
-- }}}
-- }}}
local theme = {}
-- {{{ palette
theme.palette = {
  dark = {
    -- BACKGROUND TONES
    bg = '#002636',
    bg_alt = '#073642',

    -- CONTENT TONES
    fg = '#839496',
    content = '#93a1a1',
    comment = '#586e75',
    primary = '#dc3545',
    secondary = '#586e75',

    -- ACCENT COLORS
    blue = '#268bd2',
    violet = '#6c71c4',
    magenta = '#d33682',
    red = '#dc3545',
    orange = '#cb4b16',
    yellow = '#b58900',
    green = '#859900',
    cyan = '#2aa198',

    -- DIAGNOSTICS TONES
    success = '#859900',
    info = '#b58900',
    warning = '#cb4b16',
    danger = '#dc3545',

    -- GIT TONES
    added = '#859900',
    changed = '#b58900',
    removed = '#cb4b16',
    deleted = '#dc3545',
  },
  light = {
    -- BACKGROUND TONES
    bg = '#fdf6e3',
    bg_alt = '#eee8d5',

    -- CONTENT TONES
    fg = '#657b83',
    content = '#586e75',
    comment = '#93a1a1',
    primary = '#cb4b16',
    secondary = '#93a1a1',

    -- ACCENT COLORS
    blue = '#268bd2',
    violet = '#6c71c4',
    magenta = '#d33682',
    red = '#dc3545',
    orange = '#cb4b16',
    yellow = '#b58900',
    green = '#859900',
    cyan = '#2aa198',

    -- DIAGNOSTICS TONES
    success = '#859900',
    info = '#b58900',
    warning = '#cb4b16',
    danger = '#dc3545',

    -- GIT TONES
    added = '#859900',
    changed = '#b58900',
    removed = '#cb4b16',
    deleted = '#dc3545',
  },
}
-- }}}
theme.color_mode = 'dark'
theme.transparent = false

function theme:get_colors()
  local colors = self.palette[self.color_mode]

  return colors
end

function theme:is_transparent(color)
  if self.transparent then
    return 'NONE'
  end

  return color
end

function theme:setup(config)
  vim.cmd 'hi clear'

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  if not vim.tbl_isempty(config) then
    self.color_mode = config.color_mode or self.color_mode
    self.transparent = config.transparent or self.transparent
  end

  vim.o.background = self.color_mode

  local highlights = require 'solarized.highlights'
  local utils = require 'solarized.utils'

  utils.set_highlights(highlights)
end

return theme
