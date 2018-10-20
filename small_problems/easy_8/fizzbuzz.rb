def fizzbuzz(start_number, end_number)
  fizzbuzz_array = (start_number..end_number).map do |number|
    if (number % 3 == 0) && (number % 5 == 0)
      'FizzBuzz'
    elsif number % 3 == 0
      'Fizz'
    elsif number % 5 == 0
      'Buzz'
    else
      number
    end
  end
  p fizzbuzz_array
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
