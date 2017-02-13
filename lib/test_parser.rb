require 'json'
require 'net/http'
require 'yaml'
require '/Users/hakimujackson/Documents/scribble_apps/sinatra_api/lib/key'

# uri = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2016-07-01&end_date=2016-07-08&api_key=#{api_key}")
# data = Net::HTTP.get(uri)
# parsed_data = JSON.parse(data)

def api_parser
	uri = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2017-01-01&end_date=2017-01-08&api_key=#{api_key}")
  data = Net::HTTP.get(uri)
  parsed_data = JSON.parse(data)
end

# parsed_data = api_parser

# The stuff in the testing_logs.logs file is from foo["near_earth_objects"]

# I believe this method returns all "close_approach_data" I need to see why puts returns more arrays than what's shows when I puts test_parser.count
def test_parser
	api_parser["near_earth_objects"].map do |key,value|
		value.map do |array|
		  array["close_approach_data"]
		end
	end
end

# puts test_parser
# puts parsed_data.class
# puts parsed_data["near_earth_objects"]["2016-07-03"][0]["name"]
# puts parsed_data["near_earth_objects"]["2016-07-03"][0]["close_approach_data"][0]["relative_velocity"]
# puts parsed_data["near_earth_objects"]["2016-07-03"][0]["estimated_diameter"]