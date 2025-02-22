class InstallSubmane < ActiveRecord::Migration[7.1]
  def change
    create_table :submane_plans do |t|
      t.string :name
      t.integer :price
      t.integer :visual_order, index: { unique: true }

      t.timestamps
    end

    create_table :submane_subscriptions do |t|
      t.references :plan
      t.references :subscriber
      t.datetime :end_date, null: false

      t.timestamps
    end
  end
end
