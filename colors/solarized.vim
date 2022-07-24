lua << EOF
package.loaded['solarized'] = nil
package.loaded['solarized.highlights'] = nil
package.loaded['solarized.utils'] = nil
package.loaded['solarized.theme'] = nil

require("solarized")
EOF
