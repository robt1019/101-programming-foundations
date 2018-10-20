def staggered_case(string, downcase_first_letter: false, ignore_non_alphabetic_characters: true)

  upper_needed = downcase_first_letter ? false : true

  staggered_case_string = ''

  string.chars do |char|

    if (char =~ /[A-Z]/i || !ignore_non_alphabetic_characters)
      if upper_needed
        staggered_case_string += char.upcase
      else
        staggered_case_string += char.downcase
      end
      upper_needed = !upper_needed 
    else
      staggered_case_string += char
    end
  end

  p staggered_case_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ALL CAPS', ignore_non_alphabetic_characters: false) == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'