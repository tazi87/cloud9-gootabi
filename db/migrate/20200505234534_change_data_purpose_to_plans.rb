class ChangeDataPurposeToPlans < ActiveRecord::Migration[5.2]
  def change
     change_column :plans, :purpose, :string
  end
end
