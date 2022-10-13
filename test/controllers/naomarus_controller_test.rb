require "test_helper"

class NaomarusControllerTest < ActionDispatch::IntegrationTest
  test "should get yahho" do
    get naomarus_yahho_url
    assert_response :success
  end
end
