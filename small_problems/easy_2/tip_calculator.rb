def calculate_tip(bill_amount, percentage_tip_rate)
  bill_amount * (percentage_tip_rate / 100)
end

def prompt(message)
  puts "=> #{message}"
end

prompt 'how much was the bill in pounds and pence?' \
       '(e.g 25.34 would be 25 pounds and 34 pence)'

bill_amount_in_pounds_and_pence = gets.to_f

prompt 'what is the tip rate as a percentage? (e.g. 4.5 would be 4.5%)'

percentage_tip_rate = gets.to_f

tip = calculate_tip(bill_amount_in_pounds_and_pence, percentage_tip_rate).round(2)

prompt "The tip is £#{format('%.2f', tip)}"
prompt "The total is £#{format('%.2f', bill_amount_in_pounds_and_pence + tip)}"
