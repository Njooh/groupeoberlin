require 'test_helper'

class FillialesControllerTest < ActionDispatch::IntegrationTest
  test "should get agro" do
    get filliales_agro_url
    assert_response :success
  end

end
