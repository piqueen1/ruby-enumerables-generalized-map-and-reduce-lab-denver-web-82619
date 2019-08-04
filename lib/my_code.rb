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
  result = starting_point
  
  while i < source_array.length do
    if yield(source_array[i]).is_a?(Integer)
      result += yield(source_array[i])
    else
      if yield(source_array[i]) == true
        result = true
    else
      if yield(source_array[i]) == true
        result = false  
    end
    
    i += 1
  end
  
  return result
end