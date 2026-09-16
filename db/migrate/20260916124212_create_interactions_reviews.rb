class CreateInteractionsReviews < ActiveRecord::Migration[8.1]
  def change
    create_table :interactions_reviews do |t|
      t.integer :likes_count, null: true, default: 0
      t.integer :unlikes_count, null: true, default: 0
      t.text :comments, null: true, default: nil

      t.timestamps
    end
  end
end
