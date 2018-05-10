def greetings(name, status)
  # full_name = ''
  # name.each { |x| full_name += x + ' ' }
  # p "Hello, #{ full_name.rstrip }! Nice to have a #{status[:title]} " +
  #   "#{status[:occupation]} around!"

  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} " \
  "#{status[:occupation]} around."
end

puts greetings(%w(John Q Doe), { title: 'Master', occupation: 'Plumber' })
