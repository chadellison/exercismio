class Grains
  def self.square(number)
    2 ** (number - 1)
  end

  def self.total
    total = -1
    65.times do |num|
      if num == 0
        num = 1
      end
      total += square(num)
    end
    total
  end
end
