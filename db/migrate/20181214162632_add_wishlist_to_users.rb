class AddWishlistToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wishlist, :string
  end
end
