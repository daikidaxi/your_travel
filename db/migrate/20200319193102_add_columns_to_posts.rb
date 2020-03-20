class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :photo, :string
    add_column :posts, :country_en, :string
    add_column :posts, :country_code, :string
    add_column :posts, :counts, :integer
  end
end
