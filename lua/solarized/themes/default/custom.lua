return function(c)
  local set_hl = require('solarized.utils').set_hl

  set_hl('SolarizedTodoTODO', { fg = c.info })
  set_hl('SolarizedTodoWARN', { fg = c.warning })
  set_hl('SolarizedTodoTEST', { fg = c.violet })
  set_hl('SolarizedTodoPERF', { fg = c.magenta })
  set_hl('SolarizedTodoNOTE', { fg = c.hint })
  set_hl('SolarizedTodoHACK', { fg = c.cyan })
  set_hl('SolarizedTodoFIX', { fg = c.error })
end
