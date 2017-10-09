def prompt(message)
  puts "=> #{message}"
end

def operate(num1, num2)
  operators = { add: :+, subtract: :-, multiply: :*, divide: :/,
                modulo: :%, power: :** }
  operators.each do |key, _|
    prompt("#{num1} #{operators[key]} #{num2} = " \
     "#{num1.send(operators[key], num2)}")
  end
end

prompt('Enter the first number: ')
first_num = gets.chomp.to_i
prompt('Enter the second number: ')
second_num = gets.chomp.to_i

operate(first_num, second_num)
