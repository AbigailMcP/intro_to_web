require 'sinatra'
require 'shotgun'

get '/' do
'hello!'
end

get '/aaa' do
  'hellooooo!'
end

get '/random-cat' do
  @name = ["erce", "ewan", "cat"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
