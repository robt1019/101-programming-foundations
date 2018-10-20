def swapcase(string)
  swapped_array = string.chars.map do |char| 
    (char =~ /[A-Z]/) ? char.downcase : char.upcase
  end
  swapped_array.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'