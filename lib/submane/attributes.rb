module Submane
  module Attributes
    def plan_active_subscriptions(plan_id)
      Submane::Subscription.where('plan_id = ? AND end_date > ?', plan_id, Time.now)
    end

    def create_plan!(plan)
      Submane::Plan.create!(plan)
    end

    def create_plan(plan)
      Submane::Plan.create(plan)
    end
  end
end