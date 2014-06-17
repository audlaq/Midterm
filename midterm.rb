# Program to ask users to input their state and then lets you guess or get a list of Senate and House representatives in Congress 
# or asks for politicians name and then choose if they want their state, position, political affiliation or all.
#


# Midterm notes/pseudo code
# class for choosing between a or b, state or name? or main?
	# initiate state class or pol class
# create class for inputting state
	# initiates choice between guess or get? or inherits?
# class which gives the choice between guess or get
# class to guess reps in congress is a subclass of state class?
# class for getting policians name
	# inherits guess or get class?

	# puts parsed["people"][0]["person"]["firstname"]

$:.unshift (File.dirname(__FILE__))
require_relative "lib/pol_name"
require_relative "lib/senator"

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

	PoliticianState.new(pol_name)
end