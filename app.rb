require './lib/test_parser'
require 'sinatra'

get '/' do
	"Hello"
end

get '/api' do
	test_parser[0].to_s
end