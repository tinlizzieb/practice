#sets the argument to a variable so you can call it in the command line
filename = ARGV.first

#prints argument variable
puts "We're going to erase the #{filename}"
#gives user options
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

#takes user input
$stdin.gets

#
puts "Opening the file..."
target = open(filename, 'w')
#clears the file
puts "Trucating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

#sets each new line the user inputs to a variable
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

#uses write 
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

target.close


