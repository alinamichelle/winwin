class RemoveDescriptionFromWishlist < ActiveRecord::Migration[5.2]
  def change
    remove_column :wishlists, :description, :string
  end
end
