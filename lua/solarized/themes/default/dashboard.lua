return function(c)
  local utils = require('solarized.utils')
  local set_hl = utils.set_hl

  -- general
  set_hl('DashboardHeader', { fg = c.base00 })
  set_hl('DashboardFooter', { fg = c.base00 })

  -- Hyper
  set_hl('DashboardProjectTitle', { fg = c.blue })
  set_hl('DashboardProjectTitleIcon', { link = 'DashboardProjectTitle' })
  set_hl('DashboardProjectIcon', { link = 'Directory' })
  set_hl('DashboardMruTitle', { link = 'DashboardProjectTitle' })
  set_hl('DashboardMruIcon', { link = 'DashboardMruTitle' })
  set_hl('DashboardFiles', { fg = c.base0 })
  set_hl('DashboardShotCutIcon', { fg = c.magenta })

  -- Doom theme
  set_hl('DashboardDesc', { fg = c.base0 })
  set_hl('DashboardKey', { fg = c.magenta })
  set_hl('DashboardIcon', { link = 'Directory' })
  set_hl('DashboardShotCut', { fg = c.base00 })
end
