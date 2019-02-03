require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
#  def setup
#    @base_title = "Ruby on Rails Tutorial Sample App"
#  end
#  test "should get root" do
#    get FILL_IN
#    assert_response FILL_IN
#  end
  

  test "should get home" do
#    get static_pages_home_url
    get root_path
    assert_response :success
#    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
#    assert_select "title", "Home | #{@base_title}"
#    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
#    get static_pages_help_url
    get help_path
    assert_response :success
#    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
#    assert_select "title", "Help | #{@base_title}"
     assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
#    get static_pages_about_url
    get about_path
    assert_response :success
#    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
#    assert_select "title", "About | #{@base_title}"
     assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
#    get static_pages_contact_url
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end

end
