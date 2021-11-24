require 'test_helper'

class CounselorsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get counselors_dashboard_url
    assert_response :success
  end

end
