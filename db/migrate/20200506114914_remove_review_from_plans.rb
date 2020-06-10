class RemoveReviewFromPlans < ActiveRecord::Migration[5.2]
  def change
    remove_column :plans, :review, :text
  end
end
