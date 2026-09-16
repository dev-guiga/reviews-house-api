# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[8.1]
  def change
    create_enum :review_status, %w[draft published archived]

    create_table :reviews do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :media_type, null: false
      t.string :external_source, null: false
      t.integer :external_id, null: false
      t.boolean :spoiler_warning, null: false
      t.boolean :is_public, null: false, default: false
      t.enum :review_status, enum_type: :review_status, null: false, default: :draft
      t.integer :overall_rating
      t.timestamps null: false

      t.datetime :deleted_at
    end

    add_index :reviews, :deleted_at, where: "deleted_at IS NULL"
  end
end
