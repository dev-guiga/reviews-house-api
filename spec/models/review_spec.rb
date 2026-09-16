# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "columns" do
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:media_type).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:external_source).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:external_id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:spoiler_warning).of_type(:boolean).with_options(null: false) }
    it { is_expected.to have_db_column(:review_status).of_type(:enum).with_options(null: false, default: "draft") }
    it { is_expected.to have_db_column(:overall_rating).of_type(:integer) }
    it { is_expected.to have_db_column(:is_public).of_type(:boolean).with_options(null: false, default: false) }
    it { is_expected.to have_db_column(:deleted_at).of_type(:datetime) }
    it { is_expected.to have_db_index(:deleted_at) }
  end

  describe "enums" do
  end

  describe "validations" do
  end

  describe "associations" do
  end

  describe "scopes" do
    describe "published" do
    end

    describe "archived" do
    end

    describe "deleted" do
    end
  end
end
