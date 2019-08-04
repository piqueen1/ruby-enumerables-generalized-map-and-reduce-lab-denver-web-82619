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
def reduce(source_array, starting_point=source_array[0])
  i = 0
  result = starting_point
  
  while i < source_array.length do
    result = yield(result, source_array[i])
    
    i += 1
  end
  
  return result
end