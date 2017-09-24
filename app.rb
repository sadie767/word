require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list_input = Word.view()
  erb(:input)
end

post ('/') do
  @strange_animal = params['input_word']
  @strange_def1 = params['input_def1']
  new_input = Word.new({:input_word=> @strange_animal, :input_def1=> @strange_def1})
  new_input.save
  @list_input = Word.view()
  erb(:input)
end

get('/strange_def1/:id') do
  @word = Word.find(params[:id])
  @list_input = Word.view()
  erb(:output)
end

post ('/add_comment/:id') do
  @strange_def2 = params['input_def2']
  @word = Word.find(params[:id])
  @word.add_def(@strange_def2)
  @word.show_def
  erb(:output)
end

get('/def1') do
  erb(:def1)
end

get('/def2') do
  erb(:def2)
end

get('/def3') do
  erb(:def3)
end

get('/def4') do
  erb(:def4)
end

get('/def5') do
  erb(:def5)
end
