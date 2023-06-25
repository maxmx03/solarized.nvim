describe('Config', function()
  local solarized_config = require('solarized.config')

  it('should return default config', function()
    local default_config = solarized_config()
    local expect = 'table'

    assert.equals(expect, type(default_config))
  end)

  it('should return a unique config', function()
    local config1 = solarized_config()
    local config2 = solarized_config()

    assert.are_not.equals(config1, config2)
  end)

  it('it should extends default config', function()
    local default_config = solarized_config()
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
