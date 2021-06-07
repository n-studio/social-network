require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:user)
    @post = posts(:one)
  end

  test "creating a Post" do
    visit root_url

    fill_in_trix_editor "post_content", with: "Hello"
    click_on "Post"

    assert_text "Post was successfully created"
  end

  test "updating a Post" do
    visit root_url

    find("[aria-label='More options']", match: :first).click
    click_on "Edit", match: :first

    fill_in_trix_editor "post_content", with: "Hi"
    click_on "Update Post"

    assert_text "Post was successfully updated"
  end

  test "destroying a Post" do
    visit root_url

    find("[aria-label='More options']", match: :first).click
    page.accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
