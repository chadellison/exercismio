class Squares
  VERSION = 1
  def initialize(number)
    @number = number
  end

  def square_of_sums
    sum = []
    1.upto(@number) { |num| sum << num }
    sum.reduce(0, :+) ** 2
  end

  def sum_of_squares
    sum = []
    1.upto(@number) { |num| sum << num }
    sum.map! { |num| num ** 2 }
    sum.reduce(0, :+)
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
