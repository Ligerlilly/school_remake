require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it 'returns next object' do
    @lesson1 = Lesson.create(title: 'hi', content: 'there', number: 1)
    @lesson2 = Lesson.create(title: 'sup', content: 'dog', number: 2)
    @lesson3 = Lesson.create(title: 'howdy', content: 'partner', number: 3)
    @lesson2.destroy
    expect(@lesson1.next).to eq @lesson3
  end
end
