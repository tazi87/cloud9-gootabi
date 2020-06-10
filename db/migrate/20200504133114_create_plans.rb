class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :locate
      t.text :image
      t.integer :with_who
      t.integer :how_long
      t.integer :purpose
      t.timestamps
    end
  end
end
