class Prime
  def self.nth(number)
    raise(ArgumentError) if number < 1
    primes = (2..500_000).to_a.select { |n| n.odd? }
    primes.reject! { |n| n % 3 == 0 }
    primes = [1, 2, 3] + primes
    n = 3
    until n == 10001
      primes.reject! do |num|
        num % n == 0 unless num == n
      end
      n += 1
    end
    primes[number]
  end
end
