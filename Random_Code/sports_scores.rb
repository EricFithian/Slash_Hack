#Find how many more points per contest are averaged in games that last an average of more than 2.5 hours 

module SportsInfo
  def initialize
    @time_mins = 150
    @ties_possible = true
    @no_ties = false
    @average_scoring = 0
end


class Basketball
  attr_reader :time, :no_ties, 


