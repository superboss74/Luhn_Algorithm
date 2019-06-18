# The Luhn algorithm - https://en.wikipedia.org/wiki/Luhn_algorithm
module Luhn
  def self.is_valid?(number)
    number = number.to_s.scan(/\d/).map(&:to_i).reverse
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

valid_number = 4194560385008504
puts Luhn.is_valid?(valid_number)
not_valid_number = 4194560385008505
puts Luhn.is_valid?(not_valid_number)
odd_valid = 377681478627336
puts Luhn.is_valid?(odd_valid)
odd_invalid = 377681478627337
puts Luhn.is_valid?(odd_invalid)
