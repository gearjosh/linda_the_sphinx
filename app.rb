require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require './lib/sphinx'
also_reload 'lib/**/*.rb'

get('/') do
  erb(:home)
end
