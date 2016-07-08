require 'net/http'
require './key'

uri = URI("https://api.nasa.gov/neo/rest/v1/feed?start_date=2016-07-01&end_date=2016-07-08&api_key=#{api_key}")
data = Net::HTTP.get(uri)

puts data