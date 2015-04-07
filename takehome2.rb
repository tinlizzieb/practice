

=begin
For this challenge, we are interested in finding the phone number that who digits sum to the largest number.
Write a single function that outputs the “largest” phone number in an input array (if multiple numbers are equally the largest return the last one). Assume that the phone numbers are strings of 10 digits separated by dashes.
You can choose any language to complete this.  Your program should be general enough to work with any input, but here is an example of it’s functionality in Ruby:
largest_phone_number(['123-456-7777', '963-481-7945', '111-222-3333'])
#=> '963-481-7945'
largest_
#=> '555-555-5456'
largest_phone_number(['123-456-7899'])
#=> '123-456-7899'
=end


phone_numbers = ['555-555-5555','111-111-1111','555-555-5456','222-121-2121']

'555-555-5555' #remove the dashes
'5555555555' #.split into an array of number (ideally you would convert them into integers as you do this)
['5', '5', etc...] #convert each to an integer
[5, 5, 5, 5, 5, 5, 5, 5, 5, 5] #Sum up all the values in this array
[50] #set this as a value where the key is the original string
[{'555-555-5555' => 55}, {'111-111-1111' => 10}] #compare all the values to see which is highest and return the key



#for each string, take out the "-" 
phone_numbers.map do |only_numbers|
	only_numbers.gsub!(/[^0-9]/, '')
end

=begin
newarray = ['5555555555', '1111111111', etc...]

newarray.each do |bigstring|
	bigstring.split
end

newarray [['5', '5'], ['1', '1']]

newarray.each do |eacharray|
	eacharray.each do |eachnum|
		eachnum.to_i
	end
end


newarray [[5, 5],[1, 1]]

newarray.each do |intarray|
	intarray.inject do |sum, singlenum|
		sum + singlenum
end

newarray = [[50], [10]]
#go through each modified string and add each element onto the next 

#only_numbers.split("").each do |add_up|
	#add_up = 

#sum of largest string

#unless x = x , then put last in array


=end

