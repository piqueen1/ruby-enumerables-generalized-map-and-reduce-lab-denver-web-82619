# Your Code Here
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i])) # <== Unique work
    i += 1
  end
  return new
end

def reduce(source_array, memo=0)
  i = 0
  while i < source_array.length do
    memo += yield(source_array[i]) # <== Unique work
    i += 1
  end
  return memo
end