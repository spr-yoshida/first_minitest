require 'bundler/setup'
require 'minitest/autorun'

require_relative 'test_helper'
require 'parts'

module DiameterizableInterfaceTest
  def test_implements_the_diameterizable_interface
    assert_respond_to(@object,:width)
  end
end

class WheelTest < MiniTest::Unit::TestCase
  include DiameterizableInterfaceTest

  def setup
    @wheel = @object = Wheel.new(26,1.5)
  end

  def test_calculates_diameter
    wheel = Wheel.new(26,1.5)

    assert_in_delta(
      29,
      wheel.width,
      0.01)
  end
end

class DiameterDouble
  def width
    10
  end
end

class DiameterDoubleTest < MiniTest::Unit::TestCase
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterDouble.new
  end
end

class GearTest < MiniTest::Unit::TestCase
  def setup
    @observer = MiniTest::Mock.new
    @gear = Gear.new(
      chainring:52,
      cog:11,
      observer:@observer)
  end

  def test_notifies_observers_when_cogs_change
    @observer.expect(:changed,true,[52,27])
    @gear.set_cog(27)
    @observer.verify
  end

  def test_notifies_observers_when_chainrings_change
    @observer.expect(:changed,true,[42,11])
    @gear.set_chainring(42)
    @observer.verify
  end

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