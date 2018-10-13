def suffix_from_century_string(century_string)
  if(century_string.end_with?('11') ||
    century_string.end_with?('12') ||
    century_string.end_with?('13'))
    return 'th'
  else
    last_digit = century_string[century_string.length - 1]
    case (last_digit)
      when '0' then return 'th'
      when '1' then return 'st'
      when '2' then return 'nd'
      when '3' then return 'rd'
      else return 'th'
    end
  end
end

def century(year)
  century = year % 100 == 0 ? (year / 100) : (year / 100) + 1
  "#{century}#{suffix_from_century_string(century.to_s)}"
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'