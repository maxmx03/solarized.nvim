describe('Configuration', function()
  local default_config = require('solarized.config').default_config()

  test('Default configuration', function()
    local expect = 'table'

    assert.equals(expect, type(default_config))
  end)

  test('Unique configuration table instances', function()
    local config1 = require('solarized.config').default_config()
    local config2 = require('solarized.config').default_config()

    assert.are_not.equals(config1, config2)
  end)

  test('Extend default configuration', function()
    local user_config = {
      transparent = true,
      styles = {},
    }
    local config = vim.tbl_deep_extend('force', default_config, user_config)
    local expect = 'table'
    local expect2 = true

    assert.equals(expect, type(config.styles.comments))
    assert.equals(expect, type(config.styles.functions))
    assert.equals(expect, type(config.styles.variables))
    assert.equals(expect, type(config.styles.numbers))
    assert.equals(expect, type(config.colors))
    assert.equals(expect, type(config.highlights))
    assert.equals(expect2, config.transparent)
  end)
end)
