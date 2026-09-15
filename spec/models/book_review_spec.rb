require 'rails_helper'

RSpec.describe BookReview, type: :model do
  describe "columns" do
    it { is_expected.to have_db_column(:metadata).of_type(:jsonb).with_options(null: false) }
    it { is_expected.to have_db_column(:general_rating).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:characters_rating).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:world_rating).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:story_rating).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:reading_level).of_type(:enum).with_options(null: false) }
    it { is_expected.to have_db_column(:was_completed).of_type(:boolean).with_options(null: true, default: true) }
    it { is_expected.to have_db_column(:complete_review).of_type(:text).with_options(null: false) }
  end
end
