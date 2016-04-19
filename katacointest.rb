require 'minitest/autorun'
require 'minitest/pride'
require_relative 'katacoinmeleon'

class ChangingTest < MiniTest::Test

  def test_class
    assert Changing.new
  end

  def test_call
    assert_equal [0,0,0,1], Changing.new.changer(1)
  end

  def test_spew
    assert_equal [0,1,1,0], Changing.new.changer(15)
    assert_equal [3,0,0,3], Changing.new.changer(78)
    assert_equal [5,1,0,2], Changing.new.changer(137)
    assert_equal [19,0,1,4], Changing.new.changer(484)

  end

  def test_blergh
    assert_equal [1,0,1,2], Changing.new.changer(32)
    assert_equal [3,2,0,4], Changing.new.changer(99)
    assert_equal [5,1,1,2], Changing.new.changer(142)
  end

end
