require 'test_helper'

class CelebrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get celebrations_index_url
    assert_response :success
  end

end
