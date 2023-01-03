require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @page_title = "Ruby on Rails tutorial Let's Connect"
  end

  test 'Gets the rool URL' do
    get root_url
    assert_response :success
    assert_select 'title', "Home | #{@page_title}"
  end

  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', "Home | #{@page_title}"
  end

  test 'should get help' do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@page_title}"
  end

  test 'Should get the about page' do
    get about_path
    assert_response :success
    assert_select 'title', "About | #{@page_title}"
  end

  test 'Should get the contact page' do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact Us | #{@page_title}"
  end
end
