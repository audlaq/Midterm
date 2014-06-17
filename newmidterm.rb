require 'rest-client'
require 'json'
require 'pry'

puts "***Hello and welcome to 'Find your Senators'***"
puts "Please choose how you'd like to search:"
puts "a. By state to get its Senators or"
puts "b. By a Senator's name to see the state (s)he represents."

input = gets.chomp
# receive choice as to which way to search opencongress
if input == "a"
	puts "Please provide your 2-letter state code:"
	state_code = gets.chomp.upcase

	Senator.new(state_code)
		
else
	puts "Please provide the name of a Senator:"
	pol_name = gets.chomp.capitalize


end
