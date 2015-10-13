require 'rails_helper'
describe 'creating a lesson' do
  it 'creates a lesson' do
    visit '/'
    click_link 'Add a New Lesson'
    fill_in 'lesson_title', with: 'Lesson one'
    fill_in 'lesson_content', with: 'stuff'
    click_button 'Create Lesson'
    expect(page).to have_content "Lesson one"
  end
end
