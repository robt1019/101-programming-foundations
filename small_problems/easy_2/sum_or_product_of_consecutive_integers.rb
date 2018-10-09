def prompt(message)
  puts ">> #{message}"
end

prompt 'Please enter an integer greater than 0:'
integer = gets.to_i

prompt "Enter 's' to compute the sum, 'p' to compute the product."

operation = gets.chomp

case operation
  when 's'
    result = (1..integer).reduce(0, :+)
    puts "The sum of the integers between 1 and #{integer} is #{result}"
  when 'p'
    result = (1..integer).reduce(1, :*)
    puts "The product of the integers between 1 and #{integer} is #{result}"
  else 
    puts "I didn't recognize that input."
 end

 