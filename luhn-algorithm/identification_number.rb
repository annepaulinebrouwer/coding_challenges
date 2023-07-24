class IdentificationNumber
  def self.valid?(number)
    return false if number.nil?

    number.gsub!(/\s+/, '')
    at_least_two_digits(number) && only_digits(number) && luhn_check(number)
  end

  def self.at_least_two_digits(number)
    number.length > 1
  end

  def self.only_digits(number)
    number.match?(/\A[0-9]+\z/)
  end

  def self.luhn_check(number)
    sum = number.reverse.chars.map.with_index do |num, index|
      num = num.to_i
      index.even? ? num : sum_num_check_under_nine(num)
    end.reduce(:+)
    (sum % 10).zero?
  end

  def self.sum_num_check_under_nine(num)
    (sum = num * 2) > 9 ? sum - 9 : sum
  end
end
