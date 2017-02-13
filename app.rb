require './lib/test_parser'
require 'shotgun'
require 'sinatra'

get '/' do
	erb :home
end

get '/api' do
	@start = params[:start_date]
	@end = params[:end_date]
	@parsed_data = test_parser[0].to_s
	erb :api
end

