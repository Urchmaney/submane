class CreateSubscription < ActiveRecord::Migration[7.1]
  def change
    create_table :submane_subscriptions do |t|
      t.references :submane_plan, null: false, foreign_key: { to_table: :submane_plans }
      t.references Submane.account_class_name_sym, null: false, foreign_key: true
      t.datetime :end_date, null: false

      t.timestamps
    end
  end
end
