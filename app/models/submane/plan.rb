module Submane
  class Plan < ApplicationRecord
    self.table_name = "submane_plans"
    has_many :subscriptions
    validates :name, :price, :visual_order, presence: true
  end
end
