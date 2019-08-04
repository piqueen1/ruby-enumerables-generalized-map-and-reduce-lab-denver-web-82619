# My generalized Map
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i])) # <== Unique work
    i += 1
  end
  return new
end

# My generalized Reduce
def reduce(source_array, starting_point=0)
  i = 0
  memo = starting_point
  
  while i < source_array.length do
    if yield(source_array[i]).is_a?(Integer)
      memo += yield(source_array[i])
    else
      if yield(source_array[i]) == true
    end
    
    i += 1
  end
  
  return memo
end