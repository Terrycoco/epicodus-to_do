require('capybara/rspec')
require('./app.rb')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('test of app path', {:type => :feature}) do
  it('serves page of input for new task and returns count') do
    visit('/')
    fill_in('new_task', :with =>'New task1')
    Task.clear()
    click_button('Add')

    expect(page).to have_content('1')
  end


end

describe('test of returning task', {:type => :feature}) do
  it('serves page of input for new task and returns task string') do
    visit('/')
    fill_in('new_task', :with =>'New task1')
    Task.clear()
    click_button('Add')

    expect(page).to have_content('New task1')
  end
end
