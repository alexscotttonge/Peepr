FactoryBot.define do
  factory :like do
    user nil
    peep nil
  end
  factory :photo_peep do

  end
  factory :text_peep do
    body "MyString"
  end
  factory :peep do
    body "MyString"
    user nil
  end

  factory :user do
    email "dude@abides.org"
    password "bowling"
    username "whiterussian"
  end

end
