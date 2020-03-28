class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :sting, after: :id
    add_column :users, :nationality, :string
  end
end
