require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "set a username" do
    user = User.create!(
      email: "alice@example.com",
      password: "aaaaaaaa",
      first_name: "Alice",
      last_name: "Smith",
      birthdate: "1990-01-01",
      gender: 0,
    )

    assert_equal "alice.smith", user.username
  end

  test "set a unique username if username is already take" do
    user = User.create!(
      email: "john.smith.2@example.com",
      password: "aaaaaaaa",
      first_name: "John",
      last_name: "Smith",
      birthdate: "1990-01-01",
      gender: 1,
    )

    assert_equal "john.smith.2", user.username
  end
end
