class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.string :description
      t.references :wishlist, foreign_key: true
    end
  end
end
