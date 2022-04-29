vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "solarized"

local util = require("solarized.util")
Config = require("solarized.config")
C = require("solarized.palette")
local highlights = require("solarized.highlights")
local Treesitter = require("solarized.Treesitter")
local markdown = require("solarized.markdown")
local Whichkey = require("solarized.Whichkey")
local Git = require("solarized.Git")
local LSP = require("solarized.LSP")
local Quickscope = require("solarized.Quickscope")
local Telescope = require("solarized.Telescope")
local NvimTree = require("solarized.NvimTree")
local Lir = require("solarized.Lir")
local Buffer = require("solarized.Buffer")
local StatusLine = require("solarized.StatusLine")
local IndentBlankline = require("solarized.IndentBlankline")
local Dashboard = require("solarized.Dashboard")
local DiffView = require("solarized.DiffView")
local Bookmarks = require("solarized.Bookmarks")
local Bqf = require("solarized.Bqf")
local Cmp = require("solarized.Cmp")
local Packer = require("solarized.Packer")
local SymbolOutline = require("solarized.SymbolOutline")
local Notify = require("solarized.Notify")
local Misc = require("solarized.Misc")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Packer, SymbolOutline, Notify, Misc
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end