class Prime
  def self.nth(number)
    raise ArgumentError, "Number must be greater than zero" if number < 1
    primes = []
    n = 2
    until n > number * number.to_s.length * 2.7
      primes << n unless (2...n).to_a.detect { |num| n % num == 0 }
      n += 1
    end
    primes[number -1]
  end
end
