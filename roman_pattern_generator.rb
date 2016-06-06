class RomanPatternGenerator

  def initialize (num, ones_str, fives_str, tens_str)
    @num = num
    @ones_str = ones_str
    @fives_str = fives_str
    @tens_str = tens_str
  end

  def to_s
    "#{ones_str * subtract_from_tens}#{tens_str * tens}#{ones_str * subtract_from_fives}#{fives_str * fives}#{ones_str * add_ones}"
  end

  private

  attr_reader :num, :ones_str, :fives_str, :tens_str

  def ones
    num - (fives * 5)
  end

  def add_ones
    (subtract_from_fives + subtract_from_tens) == 0 ? ones : 0
  end

  def fives
    num >= 4 && num <= 8 ? 1 : 0
  end

  def subtract_from_fives
    num == 4 ? 1 : 0
  end

  def tens
    subtract_from_tens > 0 ? 1 : 0
  end

  def subtract_from_tens
    ones == 9 ? 1 : 0
  end

end
