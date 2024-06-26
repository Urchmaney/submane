# This migration comes from submane (originally 20240623154709)
class CreatePlan < ActiveRecord::Migration[7.1]
  def change
    create_table :submane_plans do |t|
      t.string :name
      t.integer :price
      t.integer :visual_order

      t.timestamps
    end
  end
end
