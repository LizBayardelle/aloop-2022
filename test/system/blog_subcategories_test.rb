require "application_system_test_case"

class BlogSubcategoriesTest < ApplicationSystemTestCase
  setup do
    @blog_subcategory = blog_subcategories(:one)
  end

  test "visiting the index" do
    visit blog_subcategories_url
    assert_selector "h1", text: "Blog subcategories"
  end

  test "should create blog subcategory" do
    visit blog_subcategories_url
    click_on "New blog subcategory"

    fill_in "Name", with: @blog_subcategory.name
    click_on "Create Blog subcategory"

    assert_text "Blog subcategory was successfully created"
    click_on "Back"
  end

  test "should update Blog subcategory" do
    visit blog_subcategory_url(@blog_subcategory)
    click_on "Edit this blog subcategory", match: :first

    fill_in "Name", with: @blog_subcategory.name
    click_on "Update Blog subcategory"

    assert_text "Blog subcategory was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog subcategory" do
    visit blog_subcategory_url(@blog_subcategory)
    click_on "Destroy this blog subcategory", match: :first

    assert_text "Blog subcategory was successfully destroyed"
  end
end
