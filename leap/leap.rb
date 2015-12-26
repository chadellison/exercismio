class Year
  VERSION = 1
  def self.leap?(year)
    if year % 4 == 0
      if year % 400 == 0 || year % 100 != 0
        "Yes, #{year} is a leap year"
        true
      end
    else
      "No, #{year} is not a leap year"
      false
    end
  end
end
