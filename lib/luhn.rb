# The Luhn algorithm - https://en.wikipedia.org/wiki/Luhn_algorithm
module Luhn
  def self.card_to_digits(card_number)
    card_number.to_s.chars.map(&:to_i)
  end

  def self.reverse_digits(number_list)
    number_list.reverse
  end

  def self.when_greater_10(number_list)
    number_list = number_list.map do |number|
      number >= 10 ? number - 9 : number
    end
  end

  def self.divisable_by_10?(number_list)
    (number_list.sum % 10).zero?
  end

  def self.every_second_digit(number_list)
    number_list = number_list.map.with_index do |number, index|
      next number if index.zero?

      index.odd? ? number * 2 : number
    end
  end

  def self.is_valid?(credit_card_number)
    card_digits = Luhn.card_to_digits(credit_card_number)
    number_list = Luhn.reverse_digits(card_digits)
    number_list = Luhn.every_second_digit(number_list)
    number_list = Luhn.when_greater_10(number_list)
    Luhn.divisable_by_10?(number_list)
  end
end
