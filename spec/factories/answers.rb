# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do

    content "MyString"
    interest 0
    question
    factory :answer_build do
      content 'If the customization at the views level is not enough, you can customize each controller by following these steps'
    end
  end
end
