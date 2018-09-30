def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(string)
  string.to_i() != 0
end

def valid_operator?(string)
  string.to_i().between?(1, 4)
end

def input_valid_name
  name = nil
  loop do
    name = Kernel.inputs.chomp()
    break if name.empty?
    puts "Invalid name. Try again"
  end
  name
end

def input_valid_integer
  user_response = nil
  loop do
    user_response = Kernel.inputs().chomp()
    break if valid_number?(user_response)
    puts("Invalid number. Try again")
  end
  user_response.to_i()
end

def input_valid_operator
  user_response = nil
  loop do
    user_response = inputs.chomp()
    break if valid_operator?(user_response)
    prompt("Must choose 1, 2, 3 or 4")
  end
  user_response
end

def operation_to_message(operation)
  case operation
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

def calculate)

  prompt("What's the first number?")
  number1 = input_valid_integer();

  prompt("What's the second number?")
  number2 = input_valid_integer()

  operator_prompt = <<-MSG
    What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG
  prompt(operator_prompt)
  operator = input_valid_operator() 

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator

  when '1' then number1 + number2
  when '2' then number1 - number2
  when '3' then number1 * number2
  when '4' then number1.to_f() / number2.to_f()

  end

  prompt("The result is: #{result}") if result
  prompt("couldn't find an answer. Check your inputs") unless result
end

user_wants_to_continue = true

prompt("Welcome to Calculator!")
prompt("What is your name?")
name = input_valid_name()

prompt("Hello #{name}")

while(user_wants_to_continue)
  calculate();
  prompt("Do you want to make another calculation? (y/n)")
  user_wants_to_continue = inputs.chomp() == 'y'
end

prompt("Goodbye user")