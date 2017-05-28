require 'test_helper'

class CitizenRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citizen_rate = citizen_rates(:one)
  end

  test "should get index" do
    get citizen_rates_url, as: :json
    assert_response :success
  end

  test "should create citizen_rate" do
    assert_difference('CitizenRate.count') do
      post citizen_rates_url, params: { citizen_rate: { comment: @citizen_rate.comment, stars: @citizen_rate.stars, ue_id: @citizen_rate.ue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show citizen_rate" do
    get citizen_rate_url(@citizen_rate), as: :json
    assert_response :success
  end

  test "should update citizen_rate" do
    patch citizen_rate_url(@citizen_rate), params: { citizen_rate: { comment: @citizen_rate.comment, stars: @citizen_rate.stars, ue_id: @citizen_rate.ue_id } }, as: :json
    assert_response 200
  end

  test "should destroy citizen_rate" do
    assert_difference('CitizenRate.count', -1) do
      delete citizen_rate_url(@citizen_rate), as: :json
    end

    assert_response 204
  end
end
