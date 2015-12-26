class Phrase
  VERSION = 1
  def initialize(words)
    @words = words.delete(":!!.&@$%^\n").downcase
  end

  def word_count
    word_count = Hash.new(0)
    words = @words.gsub(",", " ").scan(/\b[\w']+\b/)
    words.each { |word| word_count[word] += 1 }
    word_count
  end
end
