require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Ruby on Rails tutorial Let's Connect"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails tutorial Let's Connect"
  end

  test "Should get the about page" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails tutorial Let's Connect"
  end
end
