require './lib/test_parser'
require 'shotgun'
require 'sinatra'

get '/' do
	"Hello"
end

get '/api' do
	test_parser[0].to_s
end

get '/test_api' do
  erb :home
end