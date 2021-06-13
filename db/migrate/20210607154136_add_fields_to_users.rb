class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, null: false
    add_index :users, :username, unique: true
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :display_name, :string, null: false
    add_column :users, :mobile_number, :string
    add_column :users, :birthdate, :date, null: false
    add_column :users, :gender, :integer, default: 2, null: false
  end
end
