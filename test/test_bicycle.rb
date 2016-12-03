require 'bundler/setup'
require 'minitest/autorun'

require_relative 'test_helper'
require 'bicycle'

module BicycleInterfaceTest
  def test_respoinds_to_default_tire_size
    assert_respond_to(@object,:default_tire_size)
  end

  def test_respoinds_to_default_chain
    assert_respond_to(@object,:default_chain)
  end

  def test_respoinds_to_chain
    assert_respond_to(@object,:chain)
  end

  def test_respoinds_to_size
    assert_respond_to(@object,:size)
  end

  def test_respoinds_to_tire_size
    assert_respond_to(@object,:tire_size)
  end

  def test_respoinds_to_spares
    assert_respond_to(@object,:spares)
  end
end

class BicycleTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new({tire_size: 0})
  end
end

class RoadBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest

  def setup
    @bike = @object = RoadBike.new
  end
end

