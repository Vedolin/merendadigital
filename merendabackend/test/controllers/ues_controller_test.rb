require 'test_helper'

class UesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ue = ues(:one)
  end

  test "should get index" do
    get ues_url, as: :json
    assert_response :success
  end

  test "should create ue" do
    assert_difference('Ue.count') do
      post ues_url, params: { ue: { name: @ue.name } }, as: :json
    end

    assert_response 201
  end

  test "should show ue" do
    get ue_url(@ue), as: :json
    assert_response :success
  end

  test "should update ue" do
    patch ue_url(@ue), params: { ue: { name: @ue.name } }, as: :json
    assert_response 200
  end

  test "should destroy ue" do
    assert_difference('Ue.count', -1) do
      delete ue_url(@ue), as: :json
    end

    assert_response 204
  end
end
