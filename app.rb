require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  'hello!!'
end

get '/secret' do
  'dont tell anyone!'
end

get '/cat' do
  erb(:index)
end