module Submane
  class Subscription < ApplicationRecord
    belongs_to :plan
    belongs_to Submane.account_class_name_sym, class_name: Submane.account_class_name
  end
end
