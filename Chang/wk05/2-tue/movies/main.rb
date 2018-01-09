require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

def save_result(result)
	file = File.open('search_history.txt','a') #append mode
	file.puts(result['imdbID'])
	file.close
end

get '/' do
	
	@history_info = []

	if File.exist?('search_history.txt')
		file = File.readlines('search_history.txt')
		history_list = file.uniq
		history_list.each { |movie| 
			newObj = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&i=' + movie)
			@history_info.push(newObj)
		}

	end
	# return @history_info.inspect
  erb :index

end

get '/movie_list_input' do
	@list = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&s=' + params[:movie_list])['Search']
	if @list.length > 1
		@result = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&i=' + @list[0]['imdbID'])
		@list.shift
	end

	save_result(@result)

	erb :movie_list
	# return @list.inspect
end

get '/movie' do
	@result = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&i=' + params[:movie_id])

	save_result(@result)
	
	erb :movie
	# return @result['Poster'].inspect
end

get '/about' do
	erb :about
end

