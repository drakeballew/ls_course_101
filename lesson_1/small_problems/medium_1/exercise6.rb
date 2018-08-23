# # notes
# - stack - array
# - register - array
# - commands - case statement

# # pseudo code
# - intitalize stack and array
# - write command methods
# - write command lookup method
# => case statement
# - define minilang method
#   -- 1 parameter (string)
#   -- split string into components
#     -- if integer, then do nothing
#     -- if string, then look up behavior in commands
#       -- complete operations in order
#   -- compile return values according to commands


# code

# start commands
# def n(value, register)
#   register << value
# end

# def push(stack, register)
#   stack << register.last
# end

# def add(stack, register)
#   register << (register += stack.pop)
# end

# def sub(stack, register)
#   register << (register -= stack.pop)
# end

# def mult(stack, register)
#   register << (register *= stack.pop)
# end

# def div(stack, register)
#   register << (register /= stack.pop)
# end

# def mod(stack, register)
#   register << (register %= stack.pop)
# end

# def pop(stack, register)
#   register << stack.pop
# end

# def print(register)
#   p register
# end
# end commands

require 'pry-byebug'

def find_command(arr, stack, register)
  arr.each do |element, indx|
    if element.to_i.to_s == element # if an integer
      register << element.to_i
      # binding.pry
    else
      case
      when element.downcase == 'n'
      when element.downcase == 'push'
        stack << register.last
      when element.downcase == 'add'
        register << (register.last + stack.pop)
      when element.downcase == 'sub'
        register << register.last - stack.pop
      when element.downcase == 'mult'
        register << register.last * stack.pop
      when element.downcase == 'div'
        register << register.last / stack.pop
      when element.downcase == 'mod'
        register << register.last % stack.pop
      when element.downcase == 'pop'
        register << stack.pop
      when element.downcase == 'print'
        p register.last
      end
    end

  end
end

def split_input(str)
  str.split
end


def minilang(str)
  rgstr = [0]
  stck = []
  array = split_input(str)
  find_command(array, stck, rgstr)
end



minilang('6 PUSH')

