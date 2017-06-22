class Hash
  def questions
  puts "Hi there! Let's make a quiz. First question--how many questions do you want to make?"
  answer= gets.chomp.to_i
    answer.times do
      puts "What is your question?"
      q = gets.chomp
      puts "And what is the answer?"
      a = gets.chomp
      solutions = {
        question: q,
        answer: a
      }
    end
  end  

  def shuffle!
    self.replace(self.shuffle)
  end
end

questions
