# The Luhn algorithm - https://en.wikipedia.org/wiki/Luhn_algorithm
module Luhn
  def self.card_to_digits(card_number)
    card_number.to_s.chars.map(&:to_i)
  end

  def self.reverse_digits(list_of_integers)
    list_of_integers.reverse
  end

  def self.when_double(number)
    number *= 2
    if number >= 10
      number -= 9
    else
      number
    end
  end

  def self.divisable_by_10?(list)
    true ? (list.sum % 10).zero? : false
  end

  def self.every_second_digit(number_list)
    number_list.map!.with_index do |number, index|
      if index.odd?
        number = Luhn.when_double(number)
      end
      number
    end
  end

  def self.is_valid?(credit_card_number)
    card_digits = Luhn.card_to_digits(credit_card_number)
    digits_list = Luhn.reverse_digits(card_digits)
    Luhn.every_second_digit(digits_list)
    Luhn.divisable_by_10?(digits_list)
  end
end

puts Luhn.is_valid?(4194560385008504)
