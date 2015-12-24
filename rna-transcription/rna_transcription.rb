class Complement
  VERSION = 2
  DNA = {"G" => "C", "C" => "G", "T" => "A", "A" => "U"}
  def self.of_dna(base)
      raise(ArgumentError) unless base.chars.all? { |base| DNA.include?(base) }
    base.chars.map do |dna|
      DNA[dna]
    end.join
  end

  def self.of_rna(base)
    rna = DNA.invert
      raise(ArgumentError) unless base.chars.all? { |base| rna.include?(base)}
    base.chars.map do |base|
      rna[base]
    end.join
  end
end
