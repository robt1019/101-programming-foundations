
# get valid loan amount
# get valid APR
# get valid loan duration
# calculate monthly interest rate
# calculate loan duration in months

def apr_to_monthly_interest(apr_in_percent)
  (apr_in_percent / 100) / 12
end

def calculate_monthly_payment(loan)
  p = loan[:amount]
  j = apr_to_monthly_interest(loan[:apr])
  n = loan[:duration_in_months]
  (p * (j / (1 - (1 + j)**-n))).round(2)
end

def prompt(message)
  puts ">> #{message}"
end

def input_valid_loan_amount
  loan_amount = nil
  loop do
    prompt 'How much is being borrowed in pounds and pence?'
    loan_amount = gets.chomp
    break if loan_amount.to_f.to_s == loan_amount ||
             loan_amount.to_i.to_s == loan_amount
    prompt 'Invalid loan amount. Try again'
  end
  loan_amount.to_f
end

def input_valid_duration_in_years
  duration_in_years = nil
  loop do
    prompt 'What is the loan duration in years?'
    duration_in_years = gets.chomp
    break if duration_in_years.to_i.to_s == duration_in_years
    prompt 'Invalid duration. Try again'
  end
  duration_in_years.to_i
end

def input_valid_apr_in_percent
  apr = nil
  loop do
    prompt 'What is the Annual Percentage Rate (APR) in percent ' \
            '(I.E 5 would mean 5%)?'
    apr = gets.chomp
    break if apr.to_i.to_s == apr || apr.to_f.to_s == apr
    prompt 'Invalid apr. Try again'
  end
  apr.to_f
end

loan = {}

loan[:amount] = input_valid_loan_amount
loan[:duration_in_months] = input_valid_duration_in_years * 12
loan[:apr] = input_valid_apr_in_percent

monthly_payment = calculate_monthly_payment(loan)

prompt("Your loan of £#{loan[:amount]} at #{loan[:apr]}% APR for " \
      "#{loan[:duration_in_months] / 12} years will have a monthly payment of " \
      "£#{monthly_payment}")
