FactoryBot.define do
  factory :interactions_review do
    likes_count { 0 }
    unlikes_count { 0 }
    comments { nil }
    classification_note { nil }
    disable_interactions { false }
  end
end
