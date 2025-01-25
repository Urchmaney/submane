module Submane
  module ModelAttributes
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
