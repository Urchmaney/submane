class CreatePlan < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name
      # t.integer :price
      t.integer :visual_order

      t.timestamps
    end
  end
end
