local Colorscheme = require 'solarized.src.colorscheme'
local Config = require 'solarized.src.config'
local colors = require 'solarized.src.colors'
local vim = require 'solarized.src.themes.vim'
local utils = require 'solarized.src.utils'

local config = Config:new {}
local solarized = Colorscheme:new({}, config)

solarized:set_colors(colors.dark, colors.light)
solarized:set_highlight(vim)

local highlight_groups = solarized:get_highlight()

utils.set_highlights(highlight_groups)

return solarized
