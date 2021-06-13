require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:one)
    @post = posts(:one)
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { content: "Hello" } }
    end

    assert_redirected_to root_url
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { content: "Hello" } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to root_url
  end
end
