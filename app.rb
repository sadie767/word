require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list_input = Word.view()
  erb(:input)
end

get('/output') do
  @list_input = Word.view()
  erb(:output)
end

post ('/') do
  @strange_animal = params['input_word']
  new_input = Word.new({:input_word=> @strange_animal, :input_def1=> @strange_def1})
  new_input.save
  @list_input = Word.view()
  erb(:input)
end

post ('/') do
  @strange_def2 = params['input_def2']
  new_input = Word.new({:input_word=> @strange_animal, :input_def1=> @strange_def2})
  new_input.save
  @list_input = Word.view()
  erb(:ouput)
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

get('/strange_def1/:id') do
  @new_id = Word.find(params[:id])
  @list_input = Word.view()
  erb(:output)
end

post('/definition/:id') do
  @new_id = Word.find(params[:id])
  @new_id.add_def(params['strange_def2'])
  erb(:output)
end
