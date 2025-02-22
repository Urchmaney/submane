module Submane
  class Plan < ApplicationRecord
    has_many :subscriptions
    has_many :subscribers, through: :subscriptions
    validates :name, :price, :visual_order, presence: true
  end
end
