module Submane
  module ModelAttributes
    extend ActiveSupport::Concern

    included do
      def create_subscription; end

      def active_subcriptions
        subscriptions.where('end_date > ?', Time.now).order(:end_date)
      end

      def active_plan
        subscriptions.where('end_date > ?', Time.now).order(:end_date).last.submane_plan
      end

      def active_plan?
        subscriptions.where('end_date > ?', Time.now).exists?
      end

      def active_subscription
        subscriptions.where('end_date > ?', Time.now).order(:end_date).last
      end

      alias_method :subcribed?, :active_plan?
    end

    class_methods do
    end
  end
end
