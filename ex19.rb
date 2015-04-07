#defining the function cheese_and_crackers on cheese_count and boxes of crackers so each time this function is called
#it will output this information as we define the variables
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts " you have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party"
	puts "Get a blanket. \n"

end

#use the function to directly add cheese count and boxes of crackers
puts "We can just give the function numbers directly: "
cheese_and_crackers(10,20)

#assigns variables to values and uses the function to output those values
puts "OR we can use variables from our script: "
amount_of_cheese = 30
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#uses the function to add the values of each directly in the paramaters
puts "We can even do math inside too: "
cheese_and_crackers(40 + 30, 40 + 12)

puts "_____________"
puts "Cheese: #{amount_of_cheese}"
puts "_____________"

#calls the function on both defined variables and inherent values 
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
