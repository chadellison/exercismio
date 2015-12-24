class Fixnum
  VERSION = 1
  ROMAN = {
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX",
    10 => "X"
  }

  def to_roman
    number = self
    numerals = []
    if number > 1000
      number.to_s[0].to_i.times { numerals << "M" }
      number = number - (number.to_s[0].to_i * 1000)
    elsif number > 900
      numerals << "CM"
      number -= 900
    end

    if number > 500
      number -= 500
      numerals << "D"
    elsif number > 400
      numerals << "CD"
      number -= 400
    end

    if number > 100
      number.to_s[0].to_i.times { numerals << "C"}
      number = number - (number.to_s[0].to_i * 100)
    elsif number > 90
      numerals << "XC"
      number -= 90
    end

    if number > 50
      numerals << "L"
      number -= 50
    elsif number > 40
      numerals << "XL"
      number -= 40
    end

    if number > 10
      number.to_s[0].to_i.times { numerals << "X"}
      number = number - (number.to_s[0].to_i * 10)
    end

    numerals << ROMAN[number]
    numerals.join
  end
end
