options = ['rock', 'paper', 'scissors']

your_score = 0
comp_score = 0

#If code is here, it's not run each time. That would mean that the choices you pick would always be the same. To change them, they need to be in the loop.

while your_score < 5 && comp_score < 5
  puts "You currently have #{your_score} points and the computer has #{comp_score} points!"
  puts "Let's play some RPS. Pick rock, paper, or scissors!!" 
  choice = gets.chomp.downcase 
  opponent = options.shuffle[0] #This shuffles it and then uses whatever is now first in the array
  #I could set variables here that shows rock > scissors & all other combinations to make it a bit shorter overall.
  if choice == opponent #This covers three of the lines you wrote. You can just say if they're equal, then it's a tie, regardless.
    puts "You tied! Try again!"  
  elsif choice == 'rock' && opponent == 'paper'
    puts "You won this round!"
    your_score +=1
  elsif choice == 'rock' && opponent == 'scissors'
    puts "You lost! Boo! Try again!"
    comp_score +=1
  elsif choice == 'scissors' && opponent == 'paper'
    puts "You won this round!"
    your_score +=1
  elsif choice == 'scissors' && opponent == 'rock'
    puts "You lost! Boo! Try again!"
    comp_score +=1 
  elsif choice == 'paper' && opponent == 'rock'
    puts "You won this round!"
    your_score +=1
  elsif choice == 'paper' && opponent == 'scissors'
    puts "You lost! Boo! Try again!"
    comp_score +=1
  else
    puts "Please input a valid option."
  end
end

if your_score == 5
  puts "Congrats, you won!"
else comp_score == 5
  puts "Sorry, you lost!"
end