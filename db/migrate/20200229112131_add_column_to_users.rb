class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, after: :id
    add_column :users, :nationality, :string
  end
end
