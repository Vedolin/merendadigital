require 'test_helper'

class PresentationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presentation = presentations(:one)
  end

  test "should get index" do
    get presentations_url, as: :json
    assert_response :success
  end

  test "should create presentation" do
    assert_difference('Presentation.count') do
      post presentations_url, params: { presentation: { description: @presentation.description, ingredient_id: @presentation.ingredient_id, name: @presentation.name } }, as: :json
    end

    assert_response 201
  end

  test "should show presentation" do
    get presentation_url(@presentation), as: :json
    assert_response :success
  end

  test "should update presentation" do
    patch presentation_url(@presentation), params: { presentation: { description: @presentation.description, ingredient_id: @presentation.ingredient_id, name: @presentation.name } }, as: :json
    assert_response 200
  end

  test "should destroy presentation" do
    assert_difference('Presentation.count', -1) do
      delete presentation_url(@presentation), as: :json
    end

    assert_response 204
  end
end
