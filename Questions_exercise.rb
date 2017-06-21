def questions
  answer= gets.chomp.to_i
  solutions = []
  answer.times do
    puts "What is your question?"
    q = gets.chomp
    solutions << q
    puts "And what is the answer?"
    a = gets.chomp
    solutions a
  end
  Hash[solutions]
end

#Gotta figure out how to get q and a into a hash; key is q, value is a
#shuffle your keys to make the questions random

# def quiz_time

# end


puts "Hi there! Let's make a quiz. First question--how many questions do you want to make?"
questions
p Hash 
puts "Awesome, now it's time to run it back. Let's see if you remember your own answers!"
# system('cls')
# quiz_time