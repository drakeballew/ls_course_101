def halvsies(arr)
  if arr.size.odd?
    [arr[0..((arr.size/2))], arr[((arr.size/2)+1)..(arr.size - 1)]]
  else
    [arr[0..(arr.size/2)-1], arr[((arr.size/2))..(arr.size - 1)]]
  end
end

def halvsies_deux(arr)
  first_half = arr.slice(0, (arr.size / 2.0).ceil)
  second_half = arr.slice(first_half.size, arr.size - first_half.size)
  first_half
end

p halvsies_deux([1, 2, 3, 4])
p halvsies_deux([1, 5, 2, 4, 3])
p halvsies_deux([5])
p halvsies_deux([])
