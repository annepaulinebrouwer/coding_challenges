class IdentificationNumber
  def self.valid?(number)
    return false if number.nil?

    new(number).valid?
  end

  def initialize(number)
    @number = number
  end

  def valid?
    @number.gsub!(/\s+/, '')
    only_digits? && minimum_length? && luhn?
  end

  private

  def only_digits?
    @number.match?(/\A[0-9]+\z/)
  end

  def minimum_length?
    @number.length > 1
  end

  def luhn?
    sum = @number.reverse.chars.map.with_index do |num, index|
      num = num.to_i
      index.even? ? num : multiply_maximum_nine(num)
    end.reduce(:+)
    (sum % 10).zero?
  end

  def multiply_maximum_nine(num)
    (sum = num * 2) > 9 ? sum - 9 : sum
  end
end
