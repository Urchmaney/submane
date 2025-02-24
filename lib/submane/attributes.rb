module Submane
  module Model
    def setup_submane
      has_many :subscriptions, class_name: "Submane::Subscription", foreign_key: "subscriber_id"
      include Attributes
    end

    module Attributes
      def create_subscription; end

      def active_subcriptions
        subscriptions.where("end_date > ?", Time.now).order(:end_date)
      end

      def active_plan
        subscriptions.where("end_date > ?", Time.now).order(:end_date).last.submane_plan
      end

      def active_plan?
        subscriptions.where("end_date > ?", Time.now).exists?
      end

      def active_subscription
        subscriptions.where("end_date > ?", Time.now).order(:end_date).last
      end

      alias subcribed? active_plan?
    end
  end

  module Attributes
    def plan_active_subscriptions(plan_id)
      Submane::Subscription.where("plan_id = ? AND end_date > ?", plan_id, Time.now)
    end

    def create_plan!(plan)
      Submane::Plan.create!(plan)
    end

    def create_plan(plan)
      Submane::Plan.create(plan)
    end
  end
end
