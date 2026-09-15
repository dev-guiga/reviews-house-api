# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    name { Faker::Lorem.word }
    media_type { Faker::Lorem.word }
    external_source { Faker::Lorem.word }
    external_id { Faker::Number.number(digits: 10) }
    spoiler_warning { Faker::Boolean.boolean }
    review_status { :draft }
    overall_rating { Faker::Number.between(from: 1, to: 5) }
    deleted_at { nil }

    trait :published do
      review_status { :published }
    end

    trait :archived do
      review_status { :archived }
    end

    trait :deleted do
      review_status { :deleted }
      deleted_at { Time.current - 1.day }
    end
  end
end
