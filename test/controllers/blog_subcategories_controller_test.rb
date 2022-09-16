require "test_helper"

class BlogSubcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_subcategory = blog_subcategories(:one)
  end

  test "should get index" do
    get blog_subcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_subcategory_url
    assert_response :success
  end

  test "should create blog_subcategory" do
    assert_difference("BlogSubcategory.count") do
      post blog_subcategories_url, params: { blog_subcategory: { name: @blog_subcategory.name } }
    end

    assert_redirected_to blog_subcategory_url(BlogSubcategory.last)
  end

  test "should show blog_subcategory" do
    get blog_subcategory_url(@blog_subcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_subcategory_url(@blog_subcategory)
    assert_response :success
  end

  test "should update blog_subcategory" do
    patch blog_subcategory_url(@blog_subcategory), params: { blog_subcategory: { name: @blog_subcategory.name } }
    assert_redirected_to blog_subcategory_url(@blog_subcategory)
  end

  test "should destroy blog_subcategory" do
    assert_difference("BlogSubcategory.count", -1) do
      delete blog_subcategory_url(@blog_subcategory)
    end

    assert_redirected_to blog_subcategories_url
  end
end
