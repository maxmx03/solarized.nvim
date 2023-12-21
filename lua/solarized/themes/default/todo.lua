return function(c)
  local utils = require('solarized.utils')
  local colortool = require('solarized.utils.colors')
  local set_hl = utils.set_hl
  local colorFunc
  local percentage = 80

  if vim.o.background == 'light' then
    colorFunc = colortool.lighten
  else
    colorFunc = colortool.darken
  end

  -- TODO: TODO
  -- WARN: WARN
  -- TEST: TEST
  -- PERF: PERF
  -- NOTE: NOTE
  -- HACK: HACK

  set_hl('TodoFgTODO', { fg = c.info })
  set_hl('TodoFgWARN', { fg = c.warning })
  set_hl('TodoFgTEST', { fg = c.violet })
  set_hl('TodoFgPERF', { fg = c.magenta })
  set_hl('TodoFgNOTE', { fg = c.hint })
  set_hl('TodoFgHACK', { fg = c.cyan })
  set_hl('TodoFgFIX', { fg = c.error })

  set_hl('TodoSignTODO', { fg = c.info })
  set_hl('TodoSignWARN', { fg = c.warning })
  set_hl('TodoSignTEST', { fg = c.violet })
  set_hl('TodoSignPERF', { fg = c.magenta })
  set_hl('TodoSignNOTE', { fg = c.hint })
  set_hl('TodoSignHACK', { fg = c.cyan })
  set_hl('TodoSignFIX', { fg = c.error })

  set_hl('TodoBgTODO', { fg = c.info, bg = colorFunc(c.info, percentage) })
  set_hl(
    'TodoBgWARN',
    { fg = c.warning, bg = colorFunc(c.warning, percentage) }
  )
  set_hl('TodoBgTEST', { fg = c.violet, bg = colorFunc(c.violet, percentage) })
  set_hl(
    'TodoBgPERF',
    { fg = c.magenta, bg = colorFunc(c.magenta, percentage) }
  )
  set_hl('TodoBgNOTE', { fg = c.hint, bg = colorFunc(c.hint, percentage) })
  set_hl('TodoBgHACK', { fg = c.cyan, bg = colorFunc(c.cyan, percentage) })
  set_hl('TodoBgFIX', { fg = c.error, bg = colorFunc(c.error, percentage) })
end
