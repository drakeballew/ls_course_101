def halvsies(arr)
  if arr.size.odd?
    [arr[0..((arr.size / 2))], arr[((arr.size / 2) + 1)..(arr.size - 1)]]
  else
    [arr[0..(arr.size / 2) - 1], arr[((arr.size / 2))..(arr.size - 1)]]
  end
end

def halvsies_deux(arr)
  first_half = arr.slice(0, (arr.size / 2.0).ceil)
  second_half = arr.slice(first_half.size, arr.size - first_half.size)
  [first_half, second_half]
end
