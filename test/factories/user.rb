FactoryGirl.define do
  factory :user do
    screenname { FFaker::Internet.user_name }
    email { FFaker::Internet.email }
  end
end
