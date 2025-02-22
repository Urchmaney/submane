module Submane
  class Subscription < ApplicationRecord
    belongs_to :plan
    belongs_to :subscriber, class_name: Submane.account_class if Submane.account_class
  end
end
