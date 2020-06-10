class AddReviewToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :review, :text
  end
end
