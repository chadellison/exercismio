class FoodChain
  VERSION = 2
  def self.song
    verse_one +
    verse_two +
    verse_three +
    verse_four +
    verse_five +
    verse_six +
    verse_seven +
    verse_eight
  end

  def self.beginning
    "I know an old lady who swallowed a "
  end

  def self.verse_one
    beginning + "fly." + chorus + "\n"
  end

  def self.verse_two
    beginning + "spider.\n" +
    "It wriggled and jiggled and tickled inside her.\n" +
    swallow("spider", "fly.") + self.chorus
  end

  def self.verse_three
    "\n" + beginning + "bird.\n" +
    "How absurd to swallow a bird!\n" +
    swallow("bird", "spider that wriggled and jiggled and tickled inside her.\n") +
    verse_two.split("\n")[2..-1].join("\n") + "\n"
  end

  def self.verse_four
    "\n" + beginning + "cat.\n" +
    "Imagine that, to swallow a cat!\n" +
    swallow("cat", "bird.\n") +
    self.verse_three.split("\n")[3..-1].join("\n") + "\n"
  end

  def self.verse_five
    "\n" + beginning + "dog.\n" +
    "What a hog, to swallow a dog!\n" +
    swallow("dog", "cat.\n") +
    self.verse_four.split("\n")[3..-1].join("\n") + "\n"
  end

  def self.verse_six
    "\n" + beginning + "goat.\n" +
    "Just opened her throat and swallowed a goat!\n" +
    swallow("goat", "dog.\n") +
    self.verse_five.split("\n")[3..-1].join("\n") + "\n"
  end

  def self.verse_seven
    "\n" + beginning + "cow.\n" +
    "I don't know how she swallowed a cow!\n" +
    swallow("cow", "goat.\n") +
    self.verse_six.split("\n")[3..-1].join("\n") + "\n"
  end

  def self.verse_eight
    "\n" + beginning + "horse.\n" +
    "She's dead, of course!" + "\n"
  end

  def self.chorus
    "\nI don't know why she swallowed the fly. Perhaps she'll die.\n"
  end

  def self.swallow(animal1, animal2)
    "She swallowed the " + animal1 + " to catch the " + animal2
  end
end
