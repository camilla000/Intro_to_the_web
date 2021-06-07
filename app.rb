require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'hello!!'
end

get '/secret' do
  "don't tell anyone!"
end

get '/cat' do
  erb(:index)
end
