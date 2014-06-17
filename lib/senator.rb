
class Senator
	attr_accessor :senator, :state_code

	def initialize(state_code)

		response = RestClient.get("http://api.nytimes.com/svc/politics/v3/us/legislative/congress/members/senate/#{state_code}/current.json?api-key=ebe30f605d364c99fb0d39421ff4e2c7:7:62049809")

		parsed = JSON.load(response)

		@senators = parsed["results"]

		puts "Here are the Senators from #{state_code}:"
			# senators.each do |senator|
		senator1 = @senators[0]["name"]
		senator2 = @senators[1]["name"]
			# senator = ["name"]

		puts "Name: #{senator1} \n"
		puts "Name: #{senator2}"
		
	end

	#calls a search on state_code and gives back state for 


end

# this code has to take a 2-letter input (state_code) and call a search on that state
# after they decide to get or guess

# # from opencongress git hub
#     @states = State.find(:all)

#     @state = State.find_by_abbreviation(params[:id])

#     @senators = Person.sen.find_all_by_state(@state.abbreviation).sort{|a,b| b.consecutive_years <=> a.consecutive_years }
