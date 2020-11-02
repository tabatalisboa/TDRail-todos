require 'rails_helper'

feature 'User sees own todos' do
  scenario 'doesnt see others todos' do
    Todo.create!(title: 'Hello, world!', email: "someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to have_css '.todos li', text: 'Hello, world!'
  end
end
