class Pangram
  VERSION = 1
  def self.is_pangram?(string)
    ("a".."z").to_a.all? do |letter|
      string.downcase.chars.include?(letter)
    end
  end
end
