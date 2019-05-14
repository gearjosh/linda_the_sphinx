require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require './lib/sphinx'
also_reload 'lib/**/*.rb'


get('/') do
  @linda = Sphinx.new
  @riddle1 = @linda.riddle1
  @riddle2 = @linda.riddle2
  @riddle3 = @linda.riddle3
  erb(:home)
end

post '/submit' do
  @linda = Sphinx.new
  answer1 = params[:answer1].downcase.strip
  answer2 = params[:answer2].downcase.strip
  answer3 = params[:answer3].downcase.strip
  if answer1 == 'towel'
    @linda.questions_right = @linda.questions_right + 1
  else
    @linda.questions_wrong = @linda.questions_wrong + 1
  end
  if answer2 == 'stamp'
    @linda.questions_right = @linda.questions_right + 1
  else
    @linda.questions_wrong = @linda.questions_wrong + 1
  end
  if answer3 == 'promise'
    @linda.questions_right = @linda.questions_right + 1
  else
    @linda.questions_wrong = @linda.questions_wrong + 1
  end
  @right = @linda.questions_right
  @wrong = @linda.questions_wrong
  if @right > @wrong
    @fate = 'You may enter the city of Thebes!'
  else
    @fate = 'You will be eaten by me, Linda the sphinx!'
  end
  erb(:fate)
end
