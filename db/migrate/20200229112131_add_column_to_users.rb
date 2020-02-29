class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :stirng, after: :id
    add_column :users, :nationality, :string
  end
end
