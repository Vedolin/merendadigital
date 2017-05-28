require 'test_helper'

class PreparationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preparation = preparations(:one)
  end

  test "should get index" do
    get preparations_url, as: :json
    assert_response :success
  end

  test "should create preparation" do
    assert_difference('Preparation.count') do
      post preparations_url, params: { preparation: { description: @preparation.description, ingredient_id: @preparation.ingredient_id, name: @preparation.name } }, as: :json
    end

    assert_response 201
  end

  test "should show preparation" do
    get preparation_url(@preparation), as: :json
    assert_response :success
  end

  test "should update preparation" do
    patch preparation_url(@preparation), params: { preparation: { description: @preparation.description, ingredient_id: @preparation.ingredient_id, name: @preparation.name } }, as: :json
    assert_response 200
  end

  test "should destroy preparation" do
    assert_difference('Preparation.count', -1) do
      delete preparation_url(@preparation), as: :json
    end

    assert_response 204
  end
end
