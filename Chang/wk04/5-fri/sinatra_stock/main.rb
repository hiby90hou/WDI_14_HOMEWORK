require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
require 'pry'

	def call_api(stock_ticker)
		@stock = StockQuote::Stock.quote(stock_ticker)
	end

get '/' do
	erb(:index)
end

get '/stock?' do
	@stock = call_api(params[:company_code])
	erb(:stock)
end