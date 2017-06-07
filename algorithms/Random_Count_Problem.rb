#Last week

ary = ["aklhjdafslkahljkm", "ahkljadfsjkhl", "aljknadsfjkafnjhaf", "ahadghifdsa"]

#Count the number of 'a's in the array, for each a print out "Duke is the ACC champion!"
count = 0

ary.each do |word|
  letters_array = word.split("")
  letters_array.each do |character|
    if character == "a"
      count = count += 1
    end
  end
end

require 'prime'
  Prime.each(count) do |prime|
    if prime == count
      p "Duke is the ACC Champion!"
  end
end

p count 