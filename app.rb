require('sinatra')
require('sinatra/reloader')
# also_reload('lib/**/*.rb')
# require('./lib/address_book')
require('pry')

get('/') do
  erb(:input)
end

get('/') do
  erb(:def1)
end

get('/') do
  erb(:def2)
end

get('/') do
  erb(:def3)
end

get('/') do
  erb(:def4)
end

get('/') do
  erb(:def5)
end

get('/output') do
  @input_word = params.fetch('input_word')
  @input_def1 = params.fetch('input_def1')
  # @word = Word.new(@input_word, @input_def1)
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
