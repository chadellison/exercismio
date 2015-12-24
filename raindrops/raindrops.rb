class Raindrops
  VERSION = 1
  def self.convert(number)
    raindrops = []
    raindrops << number.to_s unless number % 3 == 0 || number % 5 == 0 || number % 7 == 0
    raindrops << 'Pling' if number % 3 == 0
    raindrops << 'Plang' if number % 5 == 0
    raindrops << 'Plong' if number % 7 == 0
    raindrops.join
  end
end
