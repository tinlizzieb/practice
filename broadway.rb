require "pry"

broadway = {
	"start" => ["hairspray", "ticket booth"],
	"ticket booth" => ["full monty", "start", "alley"],
	"hairspray" => ["alley", "start"],
	"alley" => ["ticket booth", "scalper", "hairspray"],
	"scalper" => ["full monty", "alley"]
}

# 1. Display options from starting point
# 2. Pick an option (input info)
# 3. Tell program what to do with user input
#   a. User input was invalid input
#   b. User input was valid


prompt = '> '

def start()
	if user_input = start[0]
		put "Bummer. Hairspray is sold out. Let's head down the alley towards the ticket booth"
	elsif
		user_input = start[1]
		put "Sorry. Can't go that way"
	else
		put "I didn't understand. Try again."
	end
end

puts "Welcome to Broadway! The best place on earth to see a show."
puts "You've got so many options. To your right is a sign for Hairspray."
puts "Straight ahead is the ticket booth."
puts "Do you want to go to Hairspray or tickets? Type #{broadway["start"][0]} or #{broadway["start"][1]}", prompt
binding.pry

user_input = $stdin.gets.chomp
start(user_input)




# if you're at Broadway, you can take a right to Hairspray
# of go straight towards the ticket booth

# if you're at the ticket booth, Full Monty tickets are so cheap
# you must go straight to reach Full Monty

# if you're at hairspray you must take a left, and end at the alley

# if you're at the alley, turning left takes you to ticket booth
# going straight takes you to the scalper

# if you're at the scalper, you must take a left to get to the Full Monty

# if you're at the Full Monty, congrats you get to see a Broadway show :)

# broadway = {
#     'start': ['Hairspray', 'ticket booth'],
#     'ticket booth': ['full monty', 'start', 'alley'],
#     'hairspray': ['alley', 'start'],
#     'alley': ['ticket booth', 'scalper', 'hairspray'],
#     'scalper': ['full monty', 'alley'],
# }