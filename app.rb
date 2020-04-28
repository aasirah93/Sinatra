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

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
