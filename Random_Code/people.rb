people = [
  {
    "name" => "Eric",
    "age" => 31,
    "job" => "Tutor",
    "salary" => 50000,
    "active" => true
  },
  {
    "name" => "Job",
    "age" => 32,
    "job" => "Logistics",
    "salary" => 60000,
    "active" => true
  },
  {
    "name" => "Sam",
    "age" => 22, 
    "job" => "Tutor",
    "salary" => 20000,
    "active" => true
  },
  {
    "name" => "David",
    "age" => 55, 
    "job" => "Finance",
    "salary" => 150000,
    "active" => false
  },
  {
    "name" => "Elizabeth",
    "age" => 37,
    "job" => "Tutor",
    "salary" => 75000,
    "active" => true
  },
  {
    "name" => "Scott",
    "age" => 65,
    "job" => "Tutor",
    "salary" => 125000,
    "active" => false
  }
]

#Question 1: Find the average salary of the people listed below.
#Question 2: Find the average salary of everyone who is still working at their job
#Question 3: Find the average age of everyone who is still working.
#Question 4: Find the average salary of currently employed tutors.

#Question 1: 

# counter = 0
# salary = 0

# people.each do |person|
#   salary = salary + person["salary"]
#   counter += 1
# end

# average_salary = salary / counter

# p average_salary

# return average_salary


# Question 2:

# counter = 0
# salary = 0

# people.each do |person|
#   if person["active"] == true
#     salary = salary + person["salary"]
#     counter += 1
#   else
#   end
# end

# average_salary = salary / counter

# p average_salary

# return average_salary

# # Question 3: 

# counter = 0
# age = 0

# people.each do |person|
#   age = age + person["age"]
#   counter += 1
# end

# average_age = age / counter

# p average_age

# return average_age

# Question 4: 

# counter = 0
# salary = 0

# people.each do |person|
#   if person["active"] == true && person["job"] == "Tutor"
#     salary = salary + person["salary"]
#     counter += 1
#   else
#   end
# end

# average_salary = salary / counter

# p average_salary

# return average_salary