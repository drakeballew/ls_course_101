def triangle(height)
  ind = 1
  while ind <= height
    puts ('*' * ind).rjust(height)
    ind += 1
  end
end

triangle(5)
