local M = {}

-- Dark
-- base03    #002b36 background
-- base02    #073642 background highlights
-- base01    #586e75 comments / secondary content
-- base0     #839496 foreground / body text
-- base1     #93a1a1 foreground / emphasized content

-- Light
-- base3     #fdf6e3 background
-- base2     #eee8d5 background highlights
-- base1     #93a1a1 comments / secondary content
-- base00    #657b83 foreground / body text
-- base01    #586e75 foreground / emphasized content

-- default
-- yellow    #b58900
-- orange    #cb4b16
-- red       #dc322f
-- magenta   #d33682
-- violet    #6c71c4
-- blue      #268bd2
-- cyan      #2aa198
-- green     #859900

M.dark = {
  -- BACKGROUND TONES
  bg = '#002636',
  bg_alt = '#073642',

  -- BACKGROUND INVERT TONES
  bg_invert = '#fdf6e3',
  bg_alt_invert = '#eee8d5',

  -- CONTENT TONES
  fg = '#839496',
  content = '#93a1a1',
  comment = '#586e75',
  primary = '#268bd2',
  secondary = '#586e75',

  -- CONTENT INVERT TONES
  fg_invert = '#657b83',
  content_invert = '#586e75',
  comment_invert = '#93a1a1',
  primary_invert = '#d33682',
  secondary_invert = '#93a1a1',

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
  error = '#dc322f',
  info = '#268bd2',
  hint = '#859900',
  warning = '#b58900',
  other = '#93a1a1',

  -- GIT TONES
  added = '#859900',
  changed = '#b58900',
  removed = '#dc322f',
  deleted = '#dc322f',
}

M.light = {
  -- BACKGROUND TONES
  bg = '#fdf6e3',
  bg_alt = '#eee8d5',

  -- BACKGROUND DARK TONES
  bg_invert = '#002636',
  bg_alt_invert = '#073642',

  -- CONTENT TONES
  fg = '#657b83',
  content = '#586e75',
  comment = '#93a1a1',
  primary = '#d33682',
  secondary = '#93a1a1',

  -- CONTENT INVERT TONES
  fg_invert = '#839496',
  content_invert = '#93a1a1',
  comment_invert = '#586e75',
  primary_invert = '#268bd2',
  secondary_invert = '#586e75',

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
  error = '#dc322f',
  info = '#268bd2',
  hint = '#859900',
  warning = '#b58900',
  other = '#93a1a1',

  -- GIT TONES
  added = '#859900',
  changed = '#b58900',
  removed = '#dc322f',
  deleted = '#dc322f',
}

return M
