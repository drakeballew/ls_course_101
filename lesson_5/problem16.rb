def create_section(length)
  range = [*'0'..'9',*'A'..'Z',*'a'..'z']
  Array.new(length){ range.sample }.join
end

def create_uuid
  uuid = ''
  uuid = create_section(8)+ '-' + 3.times.collect {create_section(4) + '-'}.inject(:+) + create_section(12)
end

p create_uuid
