class CreateExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :expertises do |t|
      t.references :user, foreign_key: true
      t.references :topic, foreign_key: true
      t.integer :experience
      t.text :description

      t.timestamps
    end
  end
end
