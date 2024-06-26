class CreatePlan < ActiveRecord::Migration[7.1]
  def change
    create_table :submane_plans do |t|
      t.string :name
      t.integer :price
      t.integer :visual_order, index: { unique: true }

      t.timestamps
    end
  end
end
