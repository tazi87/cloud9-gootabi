class ChangeDataHowLongToPlans < ActiveRecord::Migration[5.2]
  def change
     change_column :plans, :how_long, :string
  end
end
