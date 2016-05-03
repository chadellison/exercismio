class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if limit < 2
    range = (2..limit)

    range.each do |number|
      range = range.reject do |value|
        multiples(number).include?(value)
      end
    end
    range
  end

  def multiples(number)
    ((number + 1)..limit).select do |num|
      num % number == 0
    end
  end
end
