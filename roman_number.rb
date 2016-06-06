require_relative 'roman_pattern_generator'

class RomanNumber

  def initialize(num)
    if num <= 0
      raise StandardError.new("Zero and negative numbers cannot be converted to roman numerals")
    elsif num > 3000
      raise StandardError.new("#{num} is too big to be converted to roman numerals")
    else
      @num = num
    end
  end

  def to_s
    "#{thousands}#{hundreds}#{tens}#{ones}"
  end

  private

  def ones
    RomanPatternGenerator.new(@num % 10, 'I', 'V', 'X').to_s
  end

  def tens
    RomanPatternGenerator.new((@num / 10) % 10, 'X', 'L', 'C').to_s
  end

  def hundreds
    RomanPatternGenerator.new((@num / 100) % 10, 'C', 'D', 'M').to_s
  end

  def thousands
    RomanPatternGenerator.new((@num / 1000) % 10, 'M', '!', '!').to_s
  end
end
