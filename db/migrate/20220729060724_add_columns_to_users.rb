class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :zip_code, :string
    add_column :users, :address, :string
    add_column :users, :introduction, :text
  end
end