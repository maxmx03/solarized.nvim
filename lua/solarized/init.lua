vim.api.nvim_command 'hi clear'
if vim.fn.exists 'syntax_on' then
  vim.api.nvim_command 'syntax reset'
end
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.g.colors_name = 'solarized'

local util = require 'solarized.util'
Config = require 'solarized.config'
C = require 'solarized.palette'
local highlights = require 'solarized.highlights'
local Treesitter = require 'solarized.Treesitter'
local markdown = require 'solarized.markdown'
local Whichkey = require 'solarized.Whichkey'
local Git = require 'solarized.Git'
local LSP = require 'solarized.LSP'

local skeletons = {
  highlights,
  Treesitter,
  markdown,
  Whichkey,
  Git,
  LSP,
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end
