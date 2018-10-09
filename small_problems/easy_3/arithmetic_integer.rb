puts '==> Enter the first number:'
first_number = gets.chomp

puts '==> Enter the second number:'
second_number = gets.chomp

operators = %w(+ - * / % **)

operators.each do |operator|
  result = eval(first_number + operator + second_number)
  puts "==> #{first_number} #{operator} #{second_number} = #{result}"
end
