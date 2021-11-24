require 'test_helper'

class CounselorControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get counselor_dashboard_url
    assert_response :success
  end

end
