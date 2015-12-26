class Robot
  def initialize
    @name = []
  end

  def name
    if @name.empty?
      generate_name
    else
      @name.join
    end
  end

  def generate_name
    letters = ("A".."Z").to_a
    @name << letters.sample(2)
    3.times { @name << rand(0..9).to_s }
    @name.join
  end

  def reset
    @name = []
  end
end
