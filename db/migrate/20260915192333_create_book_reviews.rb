class CreateBookReviews < ActiveRecord::Migration[8.1]
  def change
    create_enum :reading_level, %w[beginner intermediate advanced]

    create_table :book_reviews do |t|
      t.jsonb :metadata, null: false
      t.integer :general_rating, null: false
      t.integer :characters_rating, null: false
      t.integer :world_rating, null: false
      t.integer :story_rating, null: false
      t.enum :reading_level, enum_type: :reading_level, null: false
      t.boolean :was_completed, null: true, default: true
      t.text :complete_review, null: false

      t.timestamps
    end
  end
end
