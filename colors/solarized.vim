" Author: Max Miliano <milianordelcanto@gmail.com.com>

lua << EOF
package.loaded['solarized'] = nil
package.loaded['solarized.highlights'] = nil
package.loaded['solarized.Treesitter'] = nil
package.loaded['solarized.markdown'] = nil
package.loaded['solarized.Whichkey'] = nil
package.loaded['solarized.Git'] = nil
package.loaded['solarized.LSP'] = nil

require("solarized")
EOF
