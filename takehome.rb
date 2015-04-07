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



Goals:
'555-555-5555' #remove the dashes
'5555555555' #.split into an array of number 
['5', '5', etc...] #convert each to an integer
[5, 5, 5, 5, 5, 5, 5, 5, 5, 5] #Sum up all the values in the array (.inject?)
[50] #set total as a value where the key is the original string
[{'555-555-5555' => 55}, {'111-111-1111' => 10}] #compare all the values to see which is highest and return the key
=end


def largest_number
	sums = []
	phone_numbers = ["123-456-7890", "111-111-1111"]
	#Make a new HASH to store the phone number and the sum of the numbers in the number
	#ie [
	#     '123-456-7890' :: 45,
	#     '111-111-1111' :: 10
	#   ]
	#Let's loop through the phone numbers
	#
	# This is where the first foreach loop starts
	#
	#
	phone_numbers.each do |key, phone_number|
		#make a new hash with the key as the phone_number
		#temp_hash = {phone_number :: ?}
		#Set the sum to 0, we will be using this as temporary storage
		sum = 0
		#This function removes the dashes from the phone number and stores them in a temporary variable, we will use this no_dashes variable shortly
		no_dashes = phone_number.delete('-')
		#Now that we have the number with no dashes (remember we are only working on one number at a time) we are going to split it up after each character
		#to store them in an array, so that we can iterate over them and add them to the "sum" variable
		numbers = (no_dashes.split(''))
		#Loop through the array of individual numbers and prep them to be added to the sum (which is 0 at the moment)
		numbers.each do |number|
			#The new sum is the old sum plus the current number in the array that we are iterating over converted to an integer
			sum = sum + number.to_i
			#temporary hash can have the new sum put in { phone_number :: sum }
		end
		#IMPORTANT PART !!!!
		#This is the only portion of the function that even matters. It stores the results of the sum, then you can do whatever you please with them
	  sums.push(sum)

	end

p sums.max

end

largest_number


#If our largest_number returned the index (which in this case is the phone number) here are the expected results

#return new_array.at(0) <-- new_array is the hash that has the phone number as an index, and the sum of the numbers as the value
=begin

#remove the dashes ['5555555555']
phone_numbers.map do |remove_dashes|
	remove_dashes.gsub!(/[^0-9]/, '')
end

#take each string and convert to individual string within an array, convert those to integers[5, 5, 5...]
def
without_dashes_array_of_strings.map do |convert_to_individual_numbers|
	convert_to_individual_numbers.split("").map(&:to_i)
	end

#add each value within each new array to equal total sum of digits [[5, + 5, +5],[1, +1, +1]]
(individual_numbers_arrays).inject {|sum, next_number| sum + next_number}

#return largest key ("555-555-5555") from pair
phone_number_with_max_value = h.max_by { |phone_number, total_sum_of_number| total_sum_of_number }[0]


puts phone_number_with_max_value


=end

