class Solver
  def factorial(number)
    raise 'Number should not be negative' if number.negative?

    product = 1
    i = 1
    while i <= number
      product *= i
      i += 1
    end
    product
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
