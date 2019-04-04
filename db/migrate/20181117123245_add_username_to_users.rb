class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :salutation, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :street, :string
    add_column :users, :zip, :string
    add_column :users, :place, :string
    add_column :users, :phone, :string
    add_column :users, :birthday, :date

    add_index :users, :username, unique: true
  end
end
