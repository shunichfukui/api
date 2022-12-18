FactoryBot.define do
    factory :post do
      sequence(:title, 'title_1')
      sequence(:description, 'description_1')
    end
  end