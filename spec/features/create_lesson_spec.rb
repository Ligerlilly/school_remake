require 'rails_helper'
describe 'creating a lesson' do
  before do
    chapter = FactoryGirl.create(:chapter, id: 1)
    section = FactoryGirl.create(:section, chapter_id: chapter.id)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end
  it 'creates a lesson' do
    visit '/'
    click_link 'Section one'
    click_link 'Add Lesson'
    fill_in 'lesson_title', with: 'Lesson one'
    fill_in 'lesson_content', with: 'stuff'
    click_button 'Create Lesson'
    expect(page).to have_content "Lesson one"
  end
end
