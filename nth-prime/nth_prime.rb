class Prime
  def self.nth(n)
    raise ArgumentError, "Number must be greater than zero" if n < 1
    count = 0
    next_num = 1
    nth_prime = 2
    
    until count == n
      next_num += 1
      if prime(next_num)
        count += 1
        nth_prime = next_num
      end
    end
    nth_prime
  end

  def self.prime(num)
    factors = (2..num / 2).to_a
    factors.any? { |factor| num % factor == 0} ? false : true
  end
end
