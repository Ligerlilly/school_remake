require 'rails_helper'

describe 'Deleting a lesson' do
  before do
    chapter = FactoryGirl.create(:chapter, id: 1)
    section = FactoryGirl.create(:section, chapter_id: chapter.id)
    lesson = FactoryGirl.create(:lesson, id: 1)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end
  it 'gets deleted' do
    visit '/lessons/1'
    click_link 'Delete'
    expect(page).not_to have_content 'Test Lesson'
  end
end
