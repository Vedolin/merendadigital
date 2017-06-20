require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url, as: :json
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post meals_url, params: { meal: { age_id: @meal.age_id, kind_id: @meal.kind_id, planned: @meal.planned, scheduled_to: @meal.scheduled_to, school_id: @meal.school_id, served: @meal.served } }, as: :json
    end

    assert_response 201
  end

  test "should show meal" do
    get meal_url(@meal), as: :json
    assert_response :success
  end

  test "should update meal" do
    patch meal_url(@meal), params: { meal: { age_id: @meal.age_id, kind_id: @meal.kind_id, planned: @meal.planned, scheduled_to: @meal.scheduled_to, school_id: @meal.school_id, served: @meal.served } }, as: :json
    assert_response 200
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete meal_url(@meal), as: :json
    end

    assert_response 204
  end
end
