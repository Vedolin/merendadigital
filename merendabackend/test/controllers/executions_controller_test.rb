require 'test_helper'

class ExecutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @execution = executions(:one)
  end

  test "should get index" do
    get executions_url, as: :json
    assert_response :success
  end

  test "should create execution" do
    assert_difference('Execution.count') do
      post executions_url, params: { execution: { name: @execution.name } }, as: :json
    end

    assert_response 201
  end

  test "should show execution" do
    get execution_url(@execution), as: :json
    assert_response :success
  end

  test "should update execution" do
    patch execution_url(@execution), params: { execution: { name: @execution.name } }, as: :json
    assert_response 200
  end

  test "should destroy execution" do
    assert_difference('Execution.count', -1) do
      delete execution_url(@execution), as: :json
    end

    assert_response 204
  end
end
