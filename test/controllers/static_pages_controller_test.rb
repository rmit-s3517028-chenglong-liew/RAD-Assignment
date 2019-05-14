require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Course Management App"
  end
  
   test "should get root" do
    get '/'
    assert_response :success
  end
  
  test "should get guest" do
    get static_pages_guest_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
  test "should get course" do
    get static_pages_course_url
    assert_response :success
    assert_select "title", "Courses | #{@base_title}"
  end
  
  test "should get coordinator" do
    get static_pages_coordinator_url
    assert_response :success
    assert_select "title", "Coordinators | #{@base_title}"
  end

end