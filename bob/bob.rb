class Bob
  def hey(remark)
    if remark.chars.all? do |char|
      char == char.upcase
    end && remark.chars.any? { |char| ("A".."Z").include?(char) }
      "Whoa, chill out!"
    elsif remark[-1] == "?"
      "Sure."
    elsif remark == "" || remark[0] == " " || remark.chars.include?("\t")
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
