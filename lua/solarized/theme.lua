-- {{{ solarized colors
-- {{{ dark
-- bas03    #002b36 background
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
    primary = '#268bd2',
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
    hint = '#2aa198',
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
    primary = '#d33682',
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
    hint = '#2aa198',
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
theme.mode = 'dark'
theme.transparent = false
theme.style = nil

--{{{ get colors with the correct theme
function theme:get_colors()
  local colors = self.palette[self.mode]

  if not colors then
    return self.palette['dark']
  end

  return colors
end

--}}}

--{{{ verify if is transparent
function theme:is_transparent(color)
  if self.transparent then
    return 'NONE'
  end

  return color
end

--}}}

--{{{ solarized:setup
function theme:setup(config)
  --{{{ hl clear, reset syntax, colors_name
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'solarized'
  --}}}

  --{{{ default config or user config
  config = config or {}

  if not vim.tbl_isempty(config) then
    self.mode = config.mode or self.mode
    self.transparent = config.transparent or self.transparent
    self.style = config.style or self.style
  end

  local success = pcall(function()
    vim.o.background = self.mode
  end)

  if not success then
    vim.o.background = 'dark'
  end

  --}}}

  --{{{ load highlights
  local highlights = require 'solarized.highlights'
  local utils = require 'solarized.utils'

  utils.set_highlights(highlights.base)

  if self.style == 'neovim' then
    utils.set_highlights(highlights.treesitter_neovim)
    utils.set_highlights(highlights.cmp_kind)
  end

  if self.style == 'vscode' then
    utils.set_highlights(highlights.treesitter_vscode)
    utils.set_highlights(highlights.cmp_kind)
  end

  utils.set_highlights(highlights.lsp_saga)
  utils.set_highlights(highlights.diagnostic)
  utils.set_highlights(highlights.markdown)
  utils.set_highlights(highlights.nvim_tree)
  utils.set_highlights(highlights.neo_tree)
  utils.set_highlights(highlights.telescope)
  utils.set_highlights(highlights.dashboard)
  utils.set_highlights(highlights.git)
  utils.set_highlights(highlights.which_key)
  utils.set_highlights(highlights.indent_blanline)
  --}}}
end

--}}}

return theme
