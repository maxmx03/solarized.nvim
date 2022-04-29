" Author: Max Miliano <milianordelcanto@gmail.com>

lua << EOF
package.loaded['solarized'] = nil
package.loaded['solarized.highlights'] = nil
package.loaded['solarized.Treesitter'] = nil
package.loaded['solarized.markdown'] = nil
package.loaded['solarized.Whichkey'] = nil
package.loaded['solarized.Git'] = nil
package.loaded['solarized.LSP'] = nil
package.loaded['solarized.Quickscope'] = nil
package.loaded['solarized.Telescope'] = nil
package.loaded['solarized.NvimTree'] = nil
package.loaded['solarized.Lir'] = nil
package.loaded['solarized.Buffer'] = nil
package.loaded['solarized.StatusLine'] = nil
package.loaded['solarized.IndentBlankline'] = nil
package.loaded['solarized.Dashboard'] = nil
package.loaded['solarized.DiffView'] = nil
package.loaded['solarized.Bookmarks'] = nil
package.loaded['solarized.Bqf'] = nil
package.loaded['solarized.Cmp'] = nil
package.loaded['solarized.Packer'] = nil
package.loaded['solarized.SymbolOutline'] = nil
package.loaded['solarized.Notify'] = nil
package.loaded['solarized.Misc'] = nil

require("solarized")
EOF
