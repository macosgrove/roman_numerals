require 'minitest/autorun'
require_relative '../roman_pattern_generator'

class RomanTest < MiniTest::Unit::TestCase

  def test_1
    assert_equal 'X', RomanPatternGenerator.new(1, 'X', 'L', 'C').to_s
  end

  def test_2
    assert_equal 'XX', RomanPatternGenerator.new(2, 'X', 'L', 'C').to_s
  end

  def test_3
    assert_equal 'XXX', RomanPatternGenerator.new(3, 'X', 'L', 'C').to_s
  end

  def test_4
    assert_equal 'XL', RomanPatternGenerator.new(4, 'X', 'L', 'C').to_s
  end

  def test_5
    assert_equal 'L', RomanPatternGenerator.new(5, 'X', 'L', 'C').to_s
  end

  def test_6
    assert_equal 'LX', RomanPatternGenerator.new(6, 'X', 'L', 'C').to_s
  end

  def test_7
    assert_equal 'LXX', RomanPatternGenerator.new(7, 'X', 'L', 'C').to_s
  end

  def test_8
    assert_equal 'LXXX', RomanPatternGenerator.new(8, 'X', 'L', 'C').to_s
  end
  
  def test_9
    assert_equal 'XC', RomanPatternGenerator.new(9, 'X', 'L', 'C').to_s
  end

end
