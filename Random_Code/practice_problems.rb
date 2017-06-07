require 'benchmark'
require 'bigdecimal/math'
puts Benchmark.measure {}
  1000000.times do 
    #Find a way to return a string so that only the letter occurring most often prints.

    def most_occured(string)
      char_array = 'aaaaaaabcddeee'
      letter_hash = Hash.new(0)
      char_array.each do |letter| 
        letter_hash[letter] += 1
      end
    end

    p (letter_has.max_by{|letter, count| count})
  
  end
}