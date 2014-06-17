
# gets politicians name via user input to use for listing state, title, party, swear in date

# require 'rest-client'
# require 'json'

class PoliticianState
	attr_accessor :pol_name, :pol_state

	def initialize(pol_name)
		response = RestClient.get("http://api.nytimes.com/svc/politics/v3/us/legislative/congress/#{pol_name}/senate/state/current.json?api-key=ebe30f605d364c99fb0d39421ff4e2c7:7:62049809")

		parsed = JSON.load(response)

		@pol_state = parsed["people"][0]["state"]

		puts "#{pol_name} represents #{pol_state}"
	end

	# def get_pol_name(name)

		

	# end

	# get_pol_name(name)
	


end