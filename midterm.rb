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
require_relative "lib/district"
require_relative "lib/senator"

require 'rest-client'
require 'json'
require 'pry'

puts "***Hello and welcome to 'Find your Congresspeople'***"
puts "Please choose which you'd like to search:"
puts "a. Senators or"
puts "b. Representatives"
input = gets.chomp

puts "Please provide your 2-letter state code:"
state_code = gets.chomp.upcase

if input == "a"
	senators = Senator.new(state_code)
	puts "The Senators from #{state_code} are:"
	senators.get_senators
else
	puts "Please provide a district #:"
	district = gets.chomp.to_i

	district_reps = DistrictReps.new(district, state_code)
	puts "The US Representative from District #{district} of #{state_code} is:"
	district_reps.get_district_reps
	
end



