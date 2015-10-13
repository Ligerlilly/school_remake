require 'rails_helper'
describe 'editing a lesson' do
  before do
    chapter = FactoryGirl.create(:chapter, id: 1)
    section = FactoryGirl.create(:section, chapter_id: chapter.id)
    lesson = FactoryGirl.create(:lesson, id: 1)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
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
