describe('Math', function()
  local Math = require('solarized.utils.Math')

  it('should round to the nearest integer', function()
    assert.equals(6, Math.round(5.76543))
    assert.equals(3, Math.round(2.5))
    assert.equals(1, Math.round(1.3))
  end)

  it(
    'should return the value of the first parameter and the sign of the second parameter',
    function()
      assert.equals(-4.0, Math.copysign(4, -1))
      assert.equals(8, Math.copysign(-8, 97.21))
      assert.equals(-43.0, Math.copysign(43, -76))
    end
  )
end)
