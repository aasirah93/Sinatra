require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Shhhh!'
end

get '/dog' do
  'Woof!'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
