require 'rails_helper'
describe 'creating a section' do
  before do
    chapter = FactoryGirl.create(:chapter, id: 1)
    section = FactoryGirl.create(:section, chapter_id: chapter.id)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end
  it 'creates a section' do
    visit '/'
    click_link 'Add Section'
    fill_in 'section_name', with: 'Section one'
    click_button 'Create Section'
    expect(page).to have_content "Section one"
  end
end
