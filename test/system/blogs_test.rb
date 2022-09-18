require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "should create blog" do
    visit blogs_url
    click_on "New blog"

    fill_in "Body", with: @blog.body
    fill_in "Image url", with: @blog.image_url
    check "Published" if @blog.published
    fill_in "Published at", with: @blog.published_at
    fill_in "Slug", with: @blog.slug
    fill_in "Teaser", with: @blog.teaser
    fill_in "Title", with: @blog.title
    fill_in "User", with: @blog.user_id
    fill_in "Video url", with: @blog.video_url
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "should update Blog" do
    visit blog_url(@blog)
    click_on "Edit this blog", match: :first

    fill_in "Body", with: @blog.body
    fill_in "Image url", with: @blog.image_url
    check "Published" if @blog.published
    fill_in "Published at", with: @blog.published_at
    fill_in "Slug", with: @blog.slug
    fill_in "Teaser", with: @blog.teaser
    fill_in "Title", with: @blog.title
    fill_in "User", with: @blog.user_id
    fill_in "Video url", with: @blog.video_url
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog" do
    visit blog_url(@blog)
    click_on "Destroy this blog", match: :first

    assert_text "Blog was successfully destroyed"
  end
end