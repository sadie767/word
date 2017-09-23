require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:Show_exception, false)

describe('the word path', {:type => :feature}) do
  it('enters a word')
  visit('/')
  fill_in('input_word', with: 'platypus')
  click_button('Add Strange Animal!')
  expect(page)to have_content('platypus')
end

it('processes the word entry') do
   visit('/')
   fill_in('input_word', with: 'platypus')
   fill_in("input_def1", with: 'beaked quadruped')
   click_button('Add Strange Animal!')
   click_link('platypus')
   expect(page).to have_content('beaked quadruped')
 end
