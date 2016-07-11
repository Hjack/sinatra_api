require 'json'
require 'net/http'
require 'yaml'
require './key'

# uri = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2016-07-01&end_date=2016-07-08&api_key=#{api_key}")
# data = Net::HTTP.get(uri)
# parsed_data = JSON.parse(data)

def api_parser
	uri = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2016-07-01&end_date=2016-07-08&api_key=#{api_key}")
  data = Net::HTTP.get(uri)
  parsed_data = JSON.parse(data)
end

api_parser

# The stuff in the testing_logs.logs file is from foo["near_earth_objects"]

# puts parsed_data.class
# puts parsed_data["near_earth_objects"]["2016-07-03"][0]["name"]
# puts parsed_data["near_earth_objects"]["2016-07-03"][0]["close_approach_data"][0]["relative_velocity"]
# puts parsed_data["near_earth_objects"]["2016-07-03"][0]["estimated_diameter"]