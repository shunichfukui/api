FactoryBot.define do
  factory :portfolio do
    user
    sequence(:title, 'title_1')
    sequence(:description, 'description_1')
    status { :open }
    image_url { 'test' }

    # Trait status
    trait :status_open do
      status { :open }
    end
    trait :status_deleted do
      status { :deleted }
    end
  end
end