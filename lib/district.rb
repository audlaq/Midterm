
# gets house representative for a specific district

class DistrictReps
	attr_accessor :district_reps

	def initialize(district, state_code)
		response = RestClient.get("http://api.nytimes.com/svc/politics/v3/us/legislative/congress/members/house/#{state_code}/#{district}/current.json?api-key=ebe30f605d364c99fb0d39421ff4e2c7:7:62049809")

		parsed = JSON.load(response)

		@district_reps = parsed["results"]

	end

	def get_district_reps
		@district_reps.each do |district_rep|
			puts "#{district_rep["name"]}"
		end
	end
	
end