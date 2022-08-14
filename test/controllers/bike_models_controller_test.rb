require "test_helper"

class BikeModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bike_model = bike_models(:one)
  end

  test "should get index" do
    get bike_models_url
    assert_response :success
  end

  test "should get new" do
    get new_bike_model_url
    assert_response :success
  end

  test "should create bike_model" do
    assert_difference("BikeModel.count") do
      post bike_models_url, params: { bike_model: { name: @bike_model.name } }
    end

    assert_redirected_to bike_model_url(BikeModel.last)
  end

  test "should show bike_model" do
    get bike_model_url(@bike_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_bike_model_url(@bike_model)
    assert_response :success
  end

  test "should update bike_model" do
    patch bike_model_url(@bike_model), params: { bike_model: { name: @bike_model.name } }
    assert_redirected_to bike_model_url(@bike_model)
  end

  test "should destroy bike_model" do
    assert_difference("BikeModel.count", -1) do
      delete bike_model_url(@bike_model)
    end

    assert_redirected_to bike_models_url
  end
end
