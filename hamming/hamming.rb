class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise(ArgumentError)
    end
    dna_1 = strand_1.chars
    dna_2 = strand_2.chars
    count = 0
    compare = dna_1.zip(dna_2)
    compare.each do |strand|
      if strand[0] == strand[1]
        count += 0
      else
        count += 1
      end
    end
    count
  end
end
