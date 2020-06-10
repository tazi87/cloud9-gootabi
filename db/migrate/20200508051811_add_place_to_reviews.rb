class AddPlaceToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :place, :string
  end
end
