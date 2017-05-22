require 'test_helper'

class EmploiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emploi_index_url
    assert_response :success
  end

end
