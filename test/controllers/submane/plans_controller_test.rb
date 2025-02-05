require "test_helper"

module Submane
  class PlansControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @plan = submane_plans(:basic)
    end

    test "should get index" do
      get plans_url
      assert_response :success
    end

    test "should get new" do
      get new_plan_url
      assert_response :success
    end

    test "should create plan" do
      assert_difference("Plan.count") do
        post plans_url, params: { plan: { name: "Platinum", price: 300, visual_order: 4 } }
      end

      assert_redirected_to plan_url(Plan.last)
    end

    test "should show plan" do
      get plan_url(@plan)
      assert_response :success
    end

    test "should get edit" do
      get edit_plan_url(@plan)
      assert_response :success
    end

    test "should update plan" do
      patch plan_url(@plan), params: { plan: { name: "basic2" } }
      assert_redirected_to plan_url(@plan)
    end

    test "should destroy plan" do
      assert_difference("Plan.count", -1) do
        delete plan_url(@plan)
      end

      assert_redirected_to plans_url
    end
  end
end
