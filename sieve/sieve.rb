class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    (2..number).select do |num|
      prime?(num)
    end
  end

  def prime?(integer)
    (2..(integer / 2)).none? do |num|
      integer % num == 0
    end
  end
end
