FactoryBot.define do
  factory :interactions_review do
    likes_count { 0 }
    unlikes_count { 0 }
    comments { nil }
  end
  factory :interactions_review_with_comments do
    likes_count { 0 }
    unlikes_count { 0 }
    comments { "MyText" }
  end
  factory :interactions_review_with_likes do
    likes_count { 1 }
    unlikes_count { 0 }
    comments { nil }
  end
  factory :interactions_review_with_unlikes do
    likes_count { 0 }
    unlikes_count { 1 }
    comments { nil }
  end
  factory :interactions_review_with_likes_and_unlikes do
    likes_count { 1 }
    unlikes_count { 1 }
    comments { "MyText" }
  end
end
