class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :phone, :string, null: false
    add_column :users, :role, :integer, null: false
  end
end
