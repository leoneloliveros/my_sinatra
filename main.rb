require 'sinatra'
require 'sinatra/reloader' if development?

#routes

get '/' do
	"home"
end

get '/:city' do
	"yo soy leonel"
end

get '/dado/:numero' do
	x = rand(1..6).to_s
	if params[:numero].include?(x) 
	 erb :ganaste 
	else "perdiste"	
	end
end

not_found do
	"pa donde va?"
end