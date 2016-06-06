require_relative 'roman_number'

class Fixnum
  def to_roman
    RomanNumber.new(self).to_s
  end
end
