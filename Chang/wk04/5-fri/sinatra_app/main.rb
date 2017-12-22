require 'sinatra'
require 'sinatra/reloader'
require 'weather-api'
# require 'pry'

get '/' do
	# 'welcome'
	# city = params[:city]
	city = params['city']

	# country = params[:country]
	country = params['country']
	# binding.pry
	if city
		@res = Weather.lookup_by_location("#{city}, #{country}", Weather::Units::CELSIUS)
	end
	erb(:index)
end

get '/' do
	# 'welcome'
	# city = params[:city]
	city = params['city']

	# country = params[:country]
	country = params['country']
	@res = Weather.lookup_by_location("#{city}, #{country}", Weather::Units::CELSIUS)
	# puts @pic
	binding.pry
	# @res = Weather.lookup_by_location('Melbourne, Australia', Weather::Units::CELSIUS)
	# @temperature = res.condition.temp
	# @weather = res.condition.text
	erb(:index)
end