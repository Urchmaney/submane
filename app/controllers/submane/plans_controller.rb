module Submane
  class PlansController < ApplicationController
    before_action :set_plan, only: %i[show edit update destroy]

    def index
      @plans = Plan.all
    end

    def show
      @subscribers = @plan.subscribers
    end

    def new
      @plan = Plan.new
    end

    def edit; end

    def create
      @plan = Plan.new(plan_params)

      if @plan.save
        redirect_to @plan, notice: "Plan was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @plan.update(plan_params)
        redirect_to @plan, notice: "Plan was successfully updated.", status: :see_other
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @plan.destroy!
      redirect_to plans_url, notice: "Plan was successfully destroyed.", status: :see_other
    end

    private

    def set_plan
      @plan = Plan.find(params[:id])
    end

    def plan_params
      params.require(:plan).permit(%i[name price visual_order])
    end
  end
end
