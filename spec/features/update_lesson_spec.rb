require 'rails_helper'
describe 'editing a lesson' do
  before do
    @lesson = FactoryGirl.create(:lesson, id: 1)
  end
  it 'edits a lesson' do
    visit '/lessons/1'
    click_link 'Edit'
    fill_in 'lesson_title', with: 'New lesson'
    fill_in 'lesson_content', with: 'newer stuff'
    click_button 'Update Lesson'
    expect(page).to have_content "New lesson"
  end
end
