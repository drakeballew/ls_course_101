def light_switch(lights)
  switchboard = [-1] * lights
  n = 1
  lights_on = []

  while n <= lights
      switchboard.map!.with_index { |x, i| (i + 1) % n == 0 ? (x * -1) : x }
      n += 1
  end
  switchboard.to_enum.with_index(offset = 1).select { |x, i| x > 0 }.each { |y| lights_on << y[1] }
  lights_on
end

def lights(n)
  switches = Hash.new(false)
  n.times do |count|
    ((count+1)..n).step(count+1) do |i|
      switches[i] = !switches[i]
    end
  end
  switches.select { |k, v| v == true }.keys
end


p light_switch(10)
