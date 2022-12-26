FactoryBot.define do
    factory :portfolio do
      sequence(:title, 'title_1')
      sequence(:description, 'description_1')
      user_id { 1 }
    end
  end