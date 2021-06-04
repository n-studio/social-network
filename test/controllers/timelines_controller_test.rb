require "test_helper"

class TimelinesControllerTest < ActionDispatch::IntegrationTest
  test "returns 200" do
    get root_url

    assert_response :success
  end
end
