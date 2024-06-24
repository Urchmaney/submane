class CreateSubscription < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.references :plan, null: false, foreign_key: true
      t.references Submane.account_class_name_sym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
