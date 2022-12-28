FactoryBot.define do
  factory :user do
    sequence(:name, 'name_1')
    sequence(:email) { |i| "test#{i}@example.com" }
    status { :normal }
    gender { :no_gender }

    # Trait status
    trait :status_normal do
      status { :normal }
    end
    trait :status_deleted do
      status { :deleted }
    end
    
    # Trait gender
    trait :gender_no_gender do
      status { :no_gender }
    end
    trait :gender_male do
      status { :male }
    end
    trait :gender_female do
      status { :female }
    end
  end
end
