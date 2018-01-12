require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'
require 'pry'

def save_result(result)
	file = File.open('search_history.txt','a') #append mode
	file.puts(result['imdbID'])
	file.close
end

get '/' do
	
	@history_info = []
	conn = PG.connect(dbname: 'movie_db')
	sql = "SELECT COUNT(DISTINCT imdbID) AS num FROM movie;"
	round = conn.exec(sql)
	sql2 = "SELECT DISTINCT imdbid,image_url,name FROM movie;"
	data = conn.exec(sql2)

	conn.close

	i = 0
	round[0]["num"].to_i.times{
		@history_info.push(data[i])
		i +=1
	}

  erb :index

end

get '/movie_list_input' do
	conn = PG.connect(dbname: 'movie_db')
	sql = "SELECT COUNT(*) FROM movie WHERE imdbID = '#{params[:movie_list]}';"
	count = conn.exec(sql)
	if count[0]['count'] == '0'
		# cannot get data from local
		@list = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&s=' + params[:movie_list])['Search']
		
		if @list.length > 1
			@result = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&i=' + @list[0]['imdbID'])
			@list.shift

			# save data to database
			sql2 = "INSERT INTO movie
						(imdbID,name,image_url,Ratings,movie_type,DVD,Website,Runtime,Language,Country)
						VALUES ('" + @result['imdbID'].to_s + "','" + @result['Title'].to_s + "','" + @result['Poster'].to_s + "','" +
						@result['Rated'].to_s + "','" + @result["Type"].to_s + "','" + @result["DVD"].to_s + "','" + @result["Website"].to_s + "','" +
						@result["Runtime"].to_s + "','" + @result["Language"].to_s + "','" + @result['Country'].to_s + "');"
			savedata = conn.exec(sql2)
		end
		
	else
		sql3 = "SELECT * FROM movie WHERE imdbID = '#{params[:movie_list]}'"
		movie_info = conn.exec(sql3)
		@list = {}
		@list["imdbID"] = movie_info[0]["imdbID"]
		@list["Title"] = movie_info[0]["name"]
		@list["Poster"] = movie_info[0]["image_url"]
		@list["Rated"] = movie_info[0]["ratings"]
		@list["Type"] = movie_info[0]["movie_type"]
		@list["DVD"] = movie_info[0]["dvd"]
		@list["Website"] = movie_info[0]["Website"]

	end
	conn.close

	# save_result(@result)

	erb :movie_list
	# return count.inspect
end

get '/movie' do
	@result = HTTParty.get('http://www.omdbapi.com/?apikey=2f6435d9&i=' + params[:movie_id])

	# save_result(@result)
				# save data to database
	conn = PG.connect(dbname: 'movie_db')
	sql2 = "INSERT INTO movie
				(imdbID,name,image_url,Ratings,movie_type,DVD,Website,Runtime,Language,Country)
				VALUES ('" + @result['imdbID'].to_s + "','" + @result['Title'].to_s + "','" + @result['Poster'].to_s + "','" +
				@result['Rated'].to_s + "','" + @result["Type"].to_s + "','" + @result["DVD"].to_s + "','" + @result["Website"].to_s + "','" +
				@result["Runtime"].to_s + "','" + @result["Language"].to_s + "','" + @result['Country'].to_s + "');"
	savedata = conn.exec(sql2)
	conn.close

	erb :movie
	# return @result['Poster'].inspect
end

get '/about' do
	erb :about
end



