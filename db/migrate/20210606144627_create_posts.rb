class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :comments_count, null: false, default: 0
      t.integer :reactions_count, null: false, default: 0

      t.timestamps
    end
  end
end
