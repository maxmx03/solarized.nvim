return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl('@comment', { link = 'Comment' }) -- line and block comments
  set_hl('@comment.documentation', { link = 'Comment' }) -- comments documenting code
  set_hl('@error', { link = 'Error' }) -- syntax/parser errors
  set_hl('@none', { link = 'Ignore' }) -- completely disable the highlight
  set_hl('@preproc', { link = 'Keyword' }) -- various preprocessor directives & shebangs
  set_hl('@define', { link = 'Keyword' }) -- preprocessor definition directives
  set_hl('@operator', { link = 'Keyword' }) -- symbolic operators (e.g. `+` / `*`)

  set_hl('@punctuation.delimiter', { link = 'Delimiter' }) -- delimiters (e.g. `;` / `.` / `,`)
  set_hl('@punctuation.bracket', { link = 'Delimiter' }) -- brackets (e.g. `()` / `{}` / `[]`)
  set_hl('@punctuation.special', { link = 'Delimiter' }) -- special symbols (e.g. `{}` in string interpolation)

  set_hl('@string', { link = 'String' }) -- string literals
  set_hl('@string.documentation', { link = 'Comment' }) -- string documenting code (e.g. Python docstrings)
  set_hl('@string.regex', { fg = c.violet }) -- regular expressions
  set_hl('@string.escape', { link = 'Keyword' }) -- escape sequences
  set_hl('@string.special', { link = 'Constant' }) -- other special strings (e.g. dates)

  set_hl('@character', { link = 'String' }) -- character literals
  set_hl('@character.special', { link = 'Constant' }) -- special characters (e.g. wildcards)

  set_hl('@boolean', { link = 'Constant' }) -- boolean literals
  set_hl('@number', { link = 'Number' }) -- numeric literals
  set_hl('@float', { link = 'Number' }) -- floating-point number literals

  set_hl('@function', { link = 'Function' }) -- function definitions
  set_hl('@function.builtin', { link = 'Function' }) -- built-in functions
  set_hl('@function.call', { link = 'Function' }) -- function calls
  set_hl('@function.macro', { link = 'Function' }) -- preprocessor macros

  set_hl('@method', { link = 'Function' }) -- method definitions
  set_hl('@method.call', { link = 'Function' }) -- method calls

  set_hl('@constructor', { fg = c.magenta }) -- constructor calls and definitions
  set_hl('@parameter', { fg = c.orange, italic = true }, { styles = config.styles.parameters }) -- parameters of a function

  set_hl('@keyword', { link = 'Keyword' }) -- various keywords
  set_hl('@keyword.coroutine', { link = 'Keyword' }) -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
  set_hl('@keyword.function', { link = 'Keyword' }) -- keywords that define a function (e.g. `func` in Go, `def` in Python)
  set_hl('@keyword.operator', { link = 'Keyword' }) -- operators that are English words (e.g. `and` / `or`)
  set_hl('@keyword.return', { link = 'Keyword' }) -- keywords like `return` and `yield`

  set_hl('@conditional', { link = 'Keyword' }) -- keywords related to conditionals (e.g. `if` / `else`)
  set_hl('@conditional.ternary', { link = 'Keyword' }) -- ternary operator (e.g. `?` / `:`)

  set_hl('@repeat', { link = 'Keyword' }) -- keywords related to loops (e.g. `for` / `while`)
  set_hl('@debug', { link = 'Keyword' }) -- keywords related to debugging
  set_hl('@label', { link = 'Keyword' }) -- GOTO and other labels (e.g. `label:` in C)
  set_hl('@include', { link = 'Keyword' }) -- keywords for including modules (e.g. `import` / `from` in Python)
  set_hl('@exception', { link = 'Keyword' }) -- keywords related to exceptions (e.g. `throw` / `catch`)

  set_hl('@type', { link = 'Type' }) -- type or class definitions and annotations
  set_hl('@type.builtin', { link = 'Type' }) -- built-in types
  set_hl('@type.definition', { link = 'Type' }) -- type definitions (e.g. `typedef` in C)
  set_hl('@type.qualifier', { link = 'Keyword' }) -- type qualifiers (e.g. `const`)

  set_hl('@storageclass', { link = 'Keyword' }) -- modifiers that affect storage in memory or life-time
  set_hl('@attribute', { link = 'Function' }) -- attribute annotations (e.g. Python decorators)
  set_hl('@field', { fg = c.blue }) -- object and struct fields
  set_hl('@property', { link = '@field' }) -- similar to `@field`

  set_hl('@variable', { link = 'Identifier' }) -- various variable names
  set_hl('@variable.builtin', { fg = c.violet, italic = true }) -- built-in variable names (e.g. `this`)

  set_hl('@constant', { link = 'Constant' }) -- constant identifiers
  set_hl('@constant.builtin', { link = 'Constant' }) -- built-in constant values
  set_hl('@constant.macro', { link = 'Constant' }) -- constants defined by the preprocessor

  set_hl('@namespace', { fg = c.violet }) -- modules or namespaces
  set_hl('@symbol', { fg = c.violet }) -- symbols or atoms

  set_hl('@text', { fg = c.base0 }) -- non-structured text
  set_hl('@text.strong', { fg = c.yellow }) -- bold text
  set_hl('@text.emphasis', { link = '@text.strong' }) -- text with emphasis
  set_hl('@text.underline', { link = 'Underlined' }) -- underlined text
  set_hl('@text.strike', { fg = c.base01, strikethrough = true }) -- strikethrough text
  set_hl('@text.title', { link = 'Title' }) -- text that is part of a title
  set_hl('@text.quote', { fg = c.cyan }) -- text quotations
  set_hl('@text.uri', { link = 'Underlined' }) -- URIs (e.g. hyperlinks)
  set_hl('@text.math', { link = 'Number' }) -- math environments (e.g. `$ ... $` in LaTeX)
  set_hl('@text.environment', { fg = c.base0 }) -- text environments of markup languages
  set_hl('@text.environment.name', { link = 'Keyword' }) -- text indicating the type of an environment
  set_hl('@text.reference', { link = 'Underlined' }) -- text references, footnotes, citations, etc.

  set_hl('@text.literal', { link = '@text' }) -- literal or verbatim text (e.g., inline code)
  set_hl('@text.literal.block', { link = '@text' }) -- literal or verbatim text as a stand-alone block

  set_hl('@text.todo', { link = 'Todo' }) -- todo notes
  set_hl('@text.note', { fg = c.info }) -- info notes
  set_hl('@text.warning', { fg = c.warning }) -- warning notes
  set_hl('@text.danger', { fg = c.error }) -- danger/error notes

  set_hl('@text.diff.add', { fg = c.add }) -- added text (for diff files)
  set_hl('@text.diff.delete', { fg = c.delete }) -- deleted text (for diff files)

  set_hl('@tag', { fg = c.green }) -- XML tag names
  set_hl('@tag.attribute', { link = '@field' }) -- XML tag attributes
  set_hl('@tag.delimiter', { link = 'Delimiter' }) -- XML tag delimiters

  -- set_hl('@conceal')                               -- for captures that are only used for concealing
  -- set_hl('@spell')                                 -- for defining regions to be spellchecked
  -- set_hl('@nospell')                               -- for defining regions that should NOT be spellchecked

  -- Ruby
  set_hl('@label.ruby', { link = '@variable.builtin' }) -- ex: @location = ...
end
