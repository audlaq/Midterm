class Senator
	attr_accessor :senators

	def initialize(state_code)

		response = RestClient.get("http://api.nytimes.com/svc/politics/v3/us/legislative/congress/members/senate/#{state_code}/current.json?api-key=ebe30f605d364c99fb0d39421ff4e2c7:7:62049809")

		parsed = JSON.load(response)

		@senators = parsed["results"]
		
	end

	def get_senators
		@senators.each do |senator|
			puts "#{senator["name"]}"
		end
	end



end