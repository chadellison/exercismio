require 'prime'

class Prime
  def self.nth(number)
    raise(ArgumentError) if number < 1
    if number == 1
      2
    elsif number == 2
      3
    else
      primes = (1..500_000).to_a.select { |n| n.odd? }
      primes.reject! { |n| n % 3 == 0 }
      primes.unshift(3)
      primes.unshift(2)
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
end
