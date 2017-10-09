name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# I expect this code to print 'BOB' on two separate lines. This happens because
# save_name is pointed at the name variable's space in memory. When name is
# changed and stored to memory, save_name will also be changed because it is
# pointed at the same space in memory.
