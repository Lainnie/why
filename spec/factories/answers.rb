# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do

    content "MyString"
    interest 0
    question
  end
end
