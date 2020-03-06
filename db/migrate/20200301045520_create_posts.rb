class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :country
      t.text :content
      t.date :visited_date

      t.timestamps
    end
    add_index :posts, [:user_id, :created_at]

  end
end
