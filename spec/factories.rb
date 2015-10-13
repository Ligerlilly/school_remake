FactoryGirl.define do
  factory :lesson do
    title "Test Lesson"
    content  "Stuff"
  end

  factory :user do
    email 't@t.com'
    password 'password'
  end

  factory :section do
    name 'Section one'
  end

  factory :chapter do
    name "Chapter one"
  end
end
