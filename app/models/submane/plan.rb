module Submane
  class Plan < ApplicationRecord
    has_many :subscriptions
    validates :name, :price, :visual_order, presence: true
  end
end
