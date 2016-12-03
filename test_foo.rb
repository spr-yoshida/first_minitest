require 'bundler/setup'
require 'minitest/unit'
require 'minitest/autorun'

require './foo'

class TestFoo < MiniTest::Unit::TestCase
  def setup
    @foo = Foo.new
  end

  def teardown
    @foo = nil
  end

  def test_foo
    assert_equal "foo", @foo.foo
  end

  def test_bar
    assert_equal "bar", @foo.bar
  end
end