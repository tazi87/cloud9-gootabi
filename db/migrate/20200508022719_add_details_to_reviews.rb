class AddDetailsToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :with_w, :string
    add_column :reviews, :how_l, :string
    add_column :reviews, :purp, :string
  end
end
