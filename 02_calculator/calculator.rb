#write your code here
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  finalSum = 0
  array.each do |i|
    finalSum += i
  end

  return finalSum
end