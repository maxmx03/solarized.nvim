return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  --[[ Highlight capture names as of nvim-treesitter commit `6806d7a` ]]
  --

  -- Identifiers
  set_hl('@variable', { link = 'Identifier' }) -- various variable names
  set_hl('@variable.builtin', { link = 'Identifier' }) -- built-in variable names (e.g. `this`)
  set_hl(
    '@variable.parameter',
    { fg = c.base0, italic = true },
    { styles = config.styles.parameters }
  ) -- parameters of a function
  set_hl('@variable.member', { fg = c.blue }) -- object and struct fields
  set_hl('@constant', { link = 'Constant' }) -- constant identifiers
  set_hl('@constant.builtin', { link = 'Constant' }) -- built-in constant values
  set_hl('@constant.macro', { link = 'Constant' }) -- constants defined by the preprocessor
  set_hl('@module', { fg = c.violet }) -- modules or namespaces
  set_hl('@module.builtin', { fg = c.cyan }) -- built-in modules or namespaces
  set_hl('@label', { link = 'Label' }) -- GOTO and other labels (e.g. `label:` in C), including heredoc labels

  -- Literals
  set_hl('@string', { link = 'String' }) -- string literals
  set_hl('@string.documentation', { link = 'Comment' }) -- string documenting code (e.g. Python docstrings)
  set_hl('@string.regexp', { fg = c.violet }) -- regular expressions
  set_hl('@string.escape', { link = 'Keyword' }) -- escape sequences
  set_hl('@string.special', { link = 'SpecialChar' }) -- other special strings (e.g. dates)
  set_hl('@string.special.symbol', { fg = c.violet }) -- symbols or atoms
  set_hl('@string.special.url', { link = 'Underlined' }) -- URIs (e.g. hyperlinks)
  set_hl('@string.special.path', { link = 'Underlined' }) -- filenames
  set_hl('@character', { link = 'String' }) -- character literals
  set_hl('@character.special', { link = '@string.special' }) -- special characters (e.g. wildcards)
  set_hl('@character.printf', { fg = c.violet }) -- special characters (e.g. wildcards)
  set_hl('@boolean', { link = 'Boolean' }) -- boolean literals
  set_hl('@number', { link = 'Number' }) -- numeric literals
  set_hl('@number.float', { link = 'Float' }) -- floating-point number literals

  -- Types
  set_hl('@type', { link = 'Type' }) -- type or class definitions and annotations
  set_hl('@type.builtin', { link = 'Type' }) -- built-in types
  set_hl('@type.definition', { link = 'Type' }) -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
  set_hl('@type.qualifier', { link = 'Keyword' }) -- type qualifiers (e.g. `const`)
  set_hl('@attribute', { link = 'Function' }) -- attribute annotations (e.g. Python decorators)
  set_hl('@property', { link = '@variable.member' }) -- the key in key/value pairs

  -- Functions
  set_hl('@function', { link = 'Function' }) -- function definitions
  set_hl('@function.builtin', { link = 'Function' }) -- built-in functions
  set_hl('@function.call', { link = 'Function' }) -- function calls
  set_hl('@function.macro', { link = 'Function' }) -- preprocessor macros
  set_hl('@function.method', { link = 'Function' }) -- method definitions
  set_hl('@function.method.call', { link = 'Function' }) -- method calls
  set_hl('@constructor', { link = 'Function' }) -- constructor calls and definitions
  set_hl('@operator', { link = 'Operator' }) -- symbolic operators (e.g. `+` / `*`)

  -- Keywords
  set_hl('@keyword', { link = 'Keyword' }) -- keywords not fitting into specific categories
  set_hl('@keyword.coroutine', { link = 'Statement' }) -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
  set_hl('@keyword.function', { link = 'Keyword' }) -- keywords that define a function (e.g. `func` in Go, `def` in Python)
  set_hl('@keyword.operator', { link = 'Operator' }) -- operators that are English words (e.g. `and` / `or`)
  set_hl('@keyword.import', { link = 'Include' }) -- keywords for including modules (e.g. `import` / `from` in Python)
  set_hl('@keyword.storage', { link = 'StorageClass' }) -- modifiers that affect storage in memory or life-time
  set_hl('@keyword.repeat', { link = 'Repeat' }) -- keywords related to loops (e.g. `for` / `while`)
  set_hl('@keyword.return', { link = 'Statement' }) -- keywords like `return` and `yield`
  set_hl('@keyword.debug', { link = 'Debug' }) -- keywords related to debugging
  set_hl('@keyword.exception', { link = 'Exception' }) -- keywords related to exceptions (e.g. `throw` / `catch`)
  set_hl('@keyword.conditional', { link = 'Conditional' }) -- keywords related to conditionals (e.g. `if` / `else`)
  set_hl('@keyword.conditional.ternary', { link = 'Conditional' }) -- ternary operator (e.g. `?` / `:`)
  set_hl('@keyword.directive', { link = 'PreProc' }) -- various preprocessor directives & shebangs
  set_hl('@keyword.directive.define', { link = 'Define' }) -- preprocessor definition directives

  -- Punctuations
  set_hl('@punctuation.delimiter', { link = 'Delimiter' }) -- delimiters (e.g. `;` / `.` / `,`)
  set_hl('@punctuation.bracket', { link = 'Delimiter' }) -- brackets (e.g. `()` / `{}` / `[]`)
  set_hl('@punctuation.special', { link = 'Delimiter' }) -- special symbols (e.g. `{}` in string interpolation)

  -- Comments
  set_hl('@comment', { link = 'Comment' }) -- line and block comments
  set_hl('@comment.documentation', { link = 'Comment' }) -- comments documenting code
  set_hl('@comment.error', { fg = c.error }) -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
  set_hl('@comment.warning', { fg = c.warning }) -- warning-type comments (e.g. `WARNING:`, `FIX:`, `HACK:`)
  set_hl('@comment.todo', { link = 'Todo' }) -- todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
  set_hl('@comment.note', { fg = c.info }) -- note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)

  -- Markups
  set_hl('@markup.strong', { fg = c.yellow }) -- bold text
  set_hl('@markup.italic', { fg = c.yellow, italic = true }) -- italic text
  set_hl('@markup.strikethrough', { fg = c.base01, strikethrough = true }) -- struck-through text
  set_hl('@markup.underline', { link = 'Underlined' }) -- underlined text (only for literal underline markup!)
  set_hl('@markup.heading', { link = 'Title' }) -- headings, titles (including markers)
  set_hl('@markup.quote', { fg = c.cyan }) -- block quotes
  set_hl('@markup.math', { link = 'Number' }) -- math environments (e.g. `$ ... $` in LaTeX)
  set_hl('@markup.environment', { fg = c.base0 }) -- environments (e.g. in LaTeX)
  set_hl('@markup.link', { link = 'Underlined' }) -- text references, footnotes, citations, etc.
  set_hl('@markup.link.label', { link = 'Constant' }) -- link, reference descriptions
  set_hl('@markup.link.url', { link = 'Underlined' }) -- URL-style links
  set_hl('@markup.raw', { fg = c.base0 }) -- literal or verbatim text (e.g., inline code)
  set_hl('@markup.raw.block', { fg = c.base0 }) -- literal or verbatim text as a stand-alone block (use priority 90 for blocks with injections)
  set_hl('@markup.list', { link = 'Delimiter' }) -- list markers
  set_hl('@markup.list.checked', { link = 'Delimiter' }) -- checked todo-style list markers
  set_hl('@markup.list.unchecked', { link = 'Delimiter' }) -- unchecked todo-style list markers

  -- Diffs
  set_hl('@diff.plus', { fg = c.add }) -- added text (for diff files)
  set_hl('@diff.minus', { fg = c.delete }) -- deleted text (for diff files)
  set_hl('@diff.delta', { fg = c.change }) -- changed text (for diff files)

  -- Tags
  set_hl('@tag', { fg = c.blue, bold = true }) -- XML-style tag names (and similar)
  set_hl('@tag.attribute', { fg = c.violet }) -- XML-style tag attributes
  set_hl('@tag.delimiter', { fg = c.base01 }) -- XML-style tag delimiters
end
