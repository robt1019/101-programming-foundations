  def letter_case_count(string)

  cases = {}

  lowercase = ('a'..'z').to_a.join
  uppercase = ('A'..'Z').to_a.join

  cases[:lowercase] = string.count(lowercase)
  cases[:uppercase] = string.count(uppercase)
  cases[:neither] = string.length - cases[:lowercase] - cases[:uppercase]

  cases
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }