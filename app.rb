require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'hello!!'
end

get '/secret' do
  "don't tell anyone!"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond", "Ziggy"].sample
  erb(:index)
end
get '/named-cat' do
  p @name = params[:name]
  p params
  erb(:index)
end
