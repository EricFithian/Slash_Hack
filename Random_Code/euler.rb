# sum = (1..100).sum
# sum_squared = sum **2
# count = 0
# (1..100)

# difference = sum_squared - count

# p difference(1, 10)

def fibonacci(num)
  if num == 0
    return 0
  end
  array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  array[num - 1] + fibonacci(num - 2)
end

p fibonacci(4)

