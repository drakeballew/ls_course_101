require 'yaml'
require 'pry'

LANGUAGE = 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end


def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  /\-?\d/.match(num) && /^\-?\d*\.?\d*$/.match(num)
end

def operation_to_message(op)
  case op
  when '1'
    messages('adding', LANGUAGE)
  when '2'
    messages('subtracting', LANGUAGE)
  when '3'
    messages('multiplying', LANGUAGE)
  when '4'
    messages('dividing', LANGUAGE)
  end
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("#{messages('hi', LANGUAGE)}, #{name}!")
# ask the user for two numbers
loop do
  number1 = ''
  loop do
    prompt(messages('ask_first_num', LANGUAGE))
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt(messages('not_valid_num', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('ask_second_num', LANGUAGE))
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt(messages('not_valid_num', LANGUAGE))
    end
  end

  # ask the user for an operation to perform
  prompt(messages('operator_prompt', LANGUAGE))

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('not_valid_operation', LANGUAGE))
    end
  end
  # perform the operation on the two numbers

  prompt(messages('operating_message', LANGUAGE))
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
  prompt("#{messages('result_message', LANGUAGE)} #{result}.")
  prompt(messages('recalculate_message', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('thank_you', LANGUAGE))
