return function(c, config)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  set_hl(
    'Comment',
    { fg = c.base01, italic = true },
    { styles = config.styles.comments }
  ) -- any comment
  set_hl('Constant', { fg = c.violet }, { styles = config.styles.constants }) -- any constant
  set_hl('String', { fg = c.cyan }) -- a string constant: "this is a string"
  set_hl('Character', { link = 'String' }) -- a character constant: 'c', '\n'
  set_hl('Number', { fg = c.magenta }, { styles = config.styles.numbers }) -- a number constant: 234, 0xff
  set_hl('Boolean', { fg = c.violet }) -- a boolean constant: TRUE, false
  set_hl('Float', { link = 'Number' }) -- a floating point constant: 2.3e10
  set_hl('Identifier', { fg = c.base0 }, { styles = config.styles.variables }) -- any variable name
  set_hl('Function', { fg = c.blue }, { styles = config.styles.functions }) -- function name (also: methods for classes)
  set_hl('Statement', { link = 'Keyword' }) -- any statement
  set_hl('Conditional', { link = 'Keyword' }) -- if, then, else, endif, switch, etc.
  set_hl('Repeat', { link = 'Keyword' }) -- for, do, while, etc.
  set_hl('Label', { link = 'Keyword' }) -- case, default, etc.
  set_hl('Operator', { link = 'Keyword' }) -- "sizeof", "+", "*", etc.
  set_hl('Keyword', { fg = c.green }, { styles = config.styles.keywords }) -- any other keyword
  set_hl('Exception', { link = 'Keyword' }) -- try, catch, throw
  set_hl('PreProc', { link = 'Keyword' }) -- generic Preprocessor
  set_hl('Include', { link = 'Keyword' }) -- preprocessor #include
  set_hl('Define', { link = 'Keyword' }) -- preprocessor #define
  set_hl('Macro', { link = 'Keyword' }) -- same as Define
  set_hl('PreCondit', { link = 'Keyword' }) -- preprocessor #if, #else, #endif, etc.
  set_hl('Type', { fg = c.yellow }, { styles = config.styles.types }) -- int, long, char, etc.
  set_hl('StorageClass', { link = 'Keyword' }) -- static, register, volatile, etc.
  set_hl('Structure', { fg = c.yellow }) -- struct, union, enum, etc.
  set_hl('Typedef', { link = 'Keyword' }) -- A typedef
  set_hl('Special', { fg = c.magenta }) -- special symbol
  set_hl('SpecialChar', { fg = c.violet }) -- special character in a constant
  set_hl('Tag', { link = 'Special' }) -- you can use CTRL-] on this
  set_hl('Delimiter', { fg = c.orange }) -- character that needs attention
  set_hl('SpecialComment', { link = 'Keyword' }) -- special things inside a comment
  set_hl('Debug', { link = 'Keyword' }) -- debugging statements
  set_hl('Underlined', { fg = c.violet, underline = true }) --text that stands out, HTML links
  set_hl('Ignore') --left blank, hidden  |hl-Ignore|
  set_hl('Error', { fg = c.error }) --any erroneous construct
  set_hl('Todo', { fg = c.violet }) --anything that needs extra attention; mostly the keywords TODO FIXME and XXX
end
