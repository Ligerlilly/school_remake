require 'rails_helper'

describe 'Deleting a lesson' do
  before do
    @lesson = FactoryGirl.create(:lesson, id: 1)
  end
  it 'gets deleted' do
    visit '/lessons/1'
    click_link 'Delete'
    expect(page).not_to have_content 'Test Lesson'
  end
end
