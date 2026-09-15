FactoryBot.define do
  factory :book_review do
    metadata { { title: "The Great Gatsby", author: "F. Scott Fitzgerald" } }
    general_rating { 5 }
    characters_rating { 5 }
    world_rating { 5 }
    story_rating { 5 }
    reading_level { "beginner" }
    was_completed { true }
    complete_review { "I loved this book!" }
  end
end
