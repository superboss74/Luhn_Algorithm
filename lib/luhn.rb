# The Luhn algorithm - https://en.wikipedia.org/wiki/Luhn_algorithm
module Luhn
  def self.is_valid?(number)
    number = number.to_s.chars.map(&:to_i).reverse
    number.map!.with_index do |num, index|
      if index.odd?
        num *= 2
        num -= 9 if num >= 10
      end
      num
    end
    return true ? number.sum % 10 == 0 : false
  end
end
