require "application_system_test_case"

class BikeModelsTest < ApplicationSystemTestCase
  setup do
    @bike_model = bike_models(:one)
  end

  test "visiting the index" do
    visit bike_models_url
    assert_selector "h1", text: "Bike models"
  end

  test "should create bike model" do
    visit bike_models_url
    click_on "New bike model"

    fill_in "Name", with: @bike_model.name
    click_on "Create Bike model"

    assert_text "Bike model was successfully created"
    click_on "Back"
  end

  test "should update Bike model" do
    visit bike_model_url(@bike_model)
    click_on "Edit this bike model", match: :first

    fill_in "Name", with: @bike_model.name
    click_on "Update Bike model"

    assert_text "Bike model was successfully updated"
    click_on "Back"
  end

  test "should destroy Bike model" do
    visit bike_model_url(@bike_model)
    click_on "Destroy this bike model", match: :first

    assert_text "Bike model was successfully destroyed"
  end
end
