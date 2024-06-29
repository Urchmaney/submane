module Submane
  class Subscription < ApplicationRecord
    self.table_name = "submane_subscriptions"
    belongs_to :submane_plan, class_name: "Plan"
    belongs_to Submane.account_class_name_sym, class_name: Submane.account_class_name
  end
end
