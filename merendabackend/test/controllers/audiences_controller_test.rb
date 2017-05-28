require 'test_helper'

class AudiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audience = audiences(:one)
  end

  test "should get index" do
    get audiences_url, as: :json
    assert_response :success
  end

  test "should create audience" do
    assert_difference('Audience.count') do
      post audiences_url, params: { audience: { max_age: @audience.max_age, meal_id: @audience.meal_id, min_age: @audience.min_age, name: @audience.name, ue_id: @audience.ue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show audience" do
    get audience_url(@audience), as: :json
    assert_response :success
  end

  test "should update audience" do
    patch audience_url(@audience), params: { audience: { max_age: @audience.max_age, meal_id: @audience.meal_id, min_age: @audience.min_age, name: @audience.name, ue_id: @audience.ue_id } }, as: :json
    assert_response 200
  end

  test "should destroy audience" do
    assert_difference('Audience.count', -1) do
      delete audience_url(@audience), as: :json
    end

    assert_response 204
  end
end
