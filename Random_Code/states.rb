states = [{
  "state" => "California",
  "population" => 39250017
    },
    {
    "state" => "Texas",
    "population" => 27862596
    },
    {
      "state" => "Florida",
      "population" => 20612439
    },
    {
      "state" => "Pennsylvania",
      "population" => 12802503
    },
    {
      "state" => "Illinois",
      "population" => 12801539
    },
    {
      "state" => "Ohio",
      "population" => 11614373
    },
    {
      "state" => "Georgia",
      "population" => 10310371
    },
    {
      "state" => "North Carolina",
      "population" => 10146788
    },
    {
      "state" => "Michigan",
      "population" => 9928301
    },
    {
      "state" => "New Jersey",
      "population" => 8944469
    },
    {
      "state" => "Virginia",
      "population" => 8411808
    },
    {
      "state" => "Washington",
      "population" => 7288000
    },
    {
      "state" => "Arizona",
      "population" => 6931071
    },
    {
      "state" => "Massachusetts",
      "population" => 6811779
    }
]

#Find the difference between in population between states with 10 or more characters and states with fewer than 10 characters in their name.

small_names = 0
large_names = 0

states.each do |state|
    if state["state"].length >= 10
      large_names = large_names + state["population"]
    else
      small_names = small_names + state["population"]
    end
  end

difference = small_names - large_names

p difference.abs

return difference