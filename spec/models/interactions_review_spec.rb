require 'rails_helper'

RSpec.describe InteractionsReview, type: :model do
  describe "columns" do
    it { is_expected.to have_db_column(:likes_count).of_type(:integer).with_options(null: true, default: 0) }
    it { is_expected.to have_db_column(:unlikes_count).of_type(:integer).with_options(null: true, default: 0) }
    it { is_expected.to have_db_column(:comments).of_type(:text).with_options(null: true, default: nil) }
  end
  describe "validations" do
  end
end
