class AddAmmendColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :birthday, :date
    add_column :users, :tagline, :string
    add_column :users, :biography, :text
  end
end
