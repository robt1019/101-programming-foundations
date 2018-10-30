def upper_case?(char)
  char =~ /[A-Z]/
end

def lower_case?(char)
  char =~ /[a-z]/
end

def letter_percentages(string)

  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if upper_case?(char)
      counts[:uppercase] += 1
    elsif lower_case?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts = counts.map do |key, count|
    [key, ((count / string.length.to_f) * 100)]
  end
  counts.to_h
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }