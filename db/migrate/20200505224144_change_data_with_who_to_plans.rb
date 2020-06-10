class ChangeDataWithWhoToPlans < ActiveRecord::Migration[5.2]
  def change
    change_column :plans, :with_who, :string
  end
end
