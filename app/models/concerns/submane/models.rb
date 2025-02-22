module Submane
  module Models
    extend ActiveSupport::Concern

    class_methods do
      def setup_submane
        has_many :subscriptions, class_name: "Submane::Subscription", foreign_key: "subscriber_id"
        include Submane::ModelAttributes
      end
    end
  end
end
