module Submane
  module Attributes
    extend ActiveSupport::Concern

    included do
      def active_plan; end

      def active_plan?; end

      def active_subscription; end

      alias_method :subcribed?, :active_plan?
    end

    class_methods do
    end
  end
end
