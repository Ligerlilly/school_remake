require 'rails_helper'
describe 'creating a section' do
  it 'creates a section' do
    visit '/'
    click_link 'Add a New Section'
    fill_in 'section_name', with: 'Section one'
    click_button 'Create Section'
    expect(page).to have_content "Section one"
  end
end
