require "test_helper"

class TimelinesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:user)
  end

  test "returns 200" do
    get root_path

    assert_response :success
  end
end
