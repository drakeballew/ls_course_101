def diamond(n)
  x = 1
  while x < n
    puts ("*" * x).center(n)
    x += 2
  end
  if x == n
    puts ("*" * x).center(n)
    x -= 2
  end
  while (x < n) && (x >= 1)
    puts ("*" * x).center(n)
    x -= 2
  end
end

diamond(9)
