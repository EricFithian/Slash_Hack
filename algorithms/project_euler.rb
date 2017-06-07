#Question 1: 

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# multiples = []

# (1...1000).each do |variable|
#   if variable % 3 == 0 || variable % 5 == 0
#     multiples << variable
#   end
# end

# count = 0 

# multiples.each do |number|
#   count = count + number
# end

# p count

#Question 2:

# fibonacci = [1, 2]

# 400000.times do |number|
#   number = fibonacci[-1] + fibonacci[-2]
#   if number < 4000000 
#     fibonacci << number
#   end
# end

# p fibonacci

# count = 0

# fibonacci.each do |number|
#   if number % 2 == 0
#     count = count + number
#   end
# end

# p count

# count = 2 
# divisible_number = []

# 1000000.times do
#   if count % 2 == 0 && count % 3 == 0 && count % 4 == 0 && count % 5 == 0 && count % 6 == 0 && count % 7 == 0 && count % 8 == 0 && count % 9 == 0 && count % 10 == 0 && count % 11 == 0 && count % 12 == 0 && count % 13 == 0 && count % 14 == 0 && count % 15 == 0 && count % 16 == 0 && count % 17 == 0 && count % 18 == 0 && count % 19 == 0 && count % 20 == 0
#     p count 
#     divisible_number << count
#     count += 1
#   else 
#   count += 1  
#   end
# end

# p divisible_number[0]


#Question 3


def largest_prime_factor(number)
  factors = []
  count = 2

  while number > count
    if number % count == 0   
      factors << count
      count += 1
    else
      count +=1
    end
  end

    while factor > count
    if factor % count == 0
      return
    else
      count +=1
      prime_factors << factor
    end
  end
end
end

largest_prime_factor(13195)


