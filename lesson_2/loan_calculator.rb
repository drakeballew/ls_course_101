
def general_prompt(message)
  puts "=> #{message}"
end

def form_prompt(message)
  print "=> #{message}"
end

def valid_name?(str)
  first_name, last_name = str.split
  (/^[a-zA-Z]+$/.match(first_name) && first_name.length > 1) &&
    (/^[a-zA-Z]+$/.match(last_name) && last_name.length > 1)
end

def valid_number?(num)
  /^\d+$/.match(num)
end

def years_to_months(years)
  years * 12
end

def calculate_annual_rate(credit_score)
  if credit_score < 500
    0.25
  elsif credit_score >= 500 && credit_score < 650
    0.15
  elsif credit_score >= 650 && credit_score < 750
    0.1
  else
    0.05
  end
end

def calculate_monthly_rate(apr)
  apr / 12
end

def calculate_monthly_installment(amount, months, monthly_rate)
  installment = amount *
                (monthly_rate / (1 - (1 + monthly_rate)**-months))
  installment.round(2)
end

general_prompt("Welcome to the Iron Bank of Westeros!")
general_prompt("Please tell us about yourself.")

full_name = ''
loop do
  form_prompt("Full Name: ")
  full_name = gets.chomp
  if valid_name?(full_name)
    break
  else
    puts "Invalid input. Please enter your First and Last name
      (e.g. Aegon Targaryen)."
  end
end
age = ''
loop do
  form_prompt("Age: ")
  age = gets.chomp
  if valid_number?(age)
    age.to_i
    break
  else
    puts "Invalid input. Please enter your age as a positive
      whole number (e.g. 20)."
  end
end

credit_score = ''
loop do
  form_prompt("Credit Score: ")
  credit_score = gets.chomp
  if valid_number?(credit_score)
    credit_score = credit_score.to_i
    if credit_score > 299 && credit_score < 801
      break
    else
      puts "Invalid input. Please enter your credit score as a positive
        whole number between 300 and 800."
    end
  else
    puts "Invalid input. Please enter your credit score as a positive
      whole number between 300 and 800."
  end
end
puts
general_prompt("It is a pleasure to serve you, #{full_name.split.first}! "\
  "Please tell us more about your fiduciary needs: ")

requested_loan_amount = ''
loop do
  form_prompt("Requested loan amount: $")
  requested_loan_amount = gets.chomp
  if valid_number?(requested_loan_amount)
    requested_loan_amount = requested_loan_amount.to_i
    break
  else
    puts "Invalid input. Please enter a dollar amount as a positive
      whole number."
  end
end

requested_loan_duration = ''
loop do
  form_prompt("Requested loan duration (in years): ")
  requested_loan_duration = gets.chomp
  if valid_number?(requested_loan_duration)
    requested_loan_duration = requested_loan_duration.to_i
    break
  else
    puts "Invalid input. Please enter a dollar amount as a positive
      whole number."
  end
end
general_prompt("One moment while we calculate your request.")

16.times do
  print '.'
  sleep(1.0 / 24.0)
end

annual_rate  = calculate_annual_rate(credit_score)
monthly_rate = calculate_monthly_rate(annual_rate)
monthly_installment =
  calculate_monthly_installment(requested_loan_amount,
                                years_to_months(requested_loan_duration),
                                monthly_rate)

puts
general_prompt("Here are the details of your loan:")
general_prompt("Loan Amount: $#{requested_loan_amount}")
general_prompt("APR: #{annual_rate * 100}%")
general_prompt("Duration: #{requested_loan_duration} years")
general_prompt("Monthly Rate: #{monthly_rate.round(4) * 100}%")
general_prompt("Monthly Installment: $#{monthly_installment}")
