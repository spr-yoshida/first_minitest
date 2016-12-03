require 'bundler/setup'
require 'minitest/autorun'

require_relative 'test_helper'
require 'parts'

class WheelTest < MiniTest::Unit::TestCase
  def setup
    @wheel = Wheel.new(26,1.5)
  end

  def test_implements_the_diameterizable_interface
    assert_respond_to(@wheel,:diameter)
  end

  def test_calculates_diameter
    wheel = Wheel.new(26,1.5)

    assert_in_delta(
      29,
      wheel.diameter,
      0.01)
  end
end

class DiameterDouble
  def diameter
    10
  end
end

class GearTest < MiniTest::Unit::TestCase
  def test_calculates_grar_inches
    gear = Gear.new(
      chainring:52,
      cog:11,
      wheel:DiameterDouble.new)

    assert_in_delta(
      47.27,
      gear.gear_inches,
      0.01)
  end
end