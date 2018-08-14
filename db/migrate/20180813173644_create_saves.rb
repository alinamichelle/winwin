class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :saves do |t|
      t.references :saver
      t.references :saved

      t.timestamps
    end
    add_foreign_key :saves, :users, column: :saver_id, primary_key: :id
    add_foreign_key :saves, :users, column: :saved_id, primary_key: :id
  end
end
