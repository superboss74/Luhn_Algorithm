# The Luhn algorithm - https://en.wikipedia.org/wiki/Luhn_algorithm
#
# Step 1 - break the credit card into its individual digits.
# Step 2 - Start from the right, double every second digit
#          (i.e., digit 2, 4, 6 etc.).
# Step 3 - If the doubled value is greater than or equal to 10,
#          take the value and subtract 9 from it.
# Step 4 - Sum the digits.
# Step 5 - If the sum is divisible by 10, it's a valid number.
#          Otherwise it's invalid.
# This solution should work with Ruby 2.5.x
module Luhn
  def self.is_valid?(number)
    number = number.to_s.scan(/\d/).map(&:to_i).reverse # Step 1
    number.map!.with_index do |num, index| # From right since is reversed
      if index.odd?
        num *= 2 # Step 2
        num -= 9 if num >= 10 # Step 3
      end
      num
    end
    # return true ? number.reduce(:+) % 10 == 0 : false # Step 4 and 5
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
