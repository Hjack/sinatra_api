require 'json'
require 'net/http'
require './key'

uri = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2016-07-01&end_date=2016-07-08&api_key=#{api_key}")
data = Net::HTTP.get(uri)
parsed_data = JSON.parse(data)



# puts parsed_data
# puts parsed_data["element_count"]
puts parsed_data.class
puts parsed_data["near_earth_objects"]["2016-07-07"][0]["name"]
puts parsed_data["near_earth_objects"]["2016-07-07"][0]["close_approach_data"][0]["relative_velocity"]
puts parsed_data["near_earth_objects"]["2016-07-07"][0]["estimated_diameter"]