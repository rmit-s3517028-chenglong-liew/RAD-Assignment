require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get guest" do
    get static_pages_guest_url
    assert_response :success
  end

end
