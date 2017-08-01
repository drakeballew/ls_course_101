require 'yaml'
require 'pry'

LANGUAGE = 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')


def messages(message, lang='en')
  MESSAGES[lang][message]
end


# ask the user for two numbers
def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def valid_number?(num)
  /\-?\d/.match(num) && /^\-?\d*\.?\d*$/.match(num)
end

def operation_to_message(op)
  x = case op
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    end
  y = "Testing"
  x
end

operator_prompt = <<-MSG
  What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
MSG

prompt('welcome')

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt('hi')

loop do
  number1 = ''
  loop do
    prompt('ask_first_num')
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt('not_valid_num')
    end
  end

  number2 = ''
  loop do
    prompt('ask_second_num')
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt('not_valid_num')
    end
  end

  # ask the user for an operation to perform
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('not_valid_operation')
    end
  end
  # perform the operation on the two numbers

  prompt('operating_message')
  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end

  # output the result
  prompt('result_message')
  prompt('recalculate_message')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('thank_you')
