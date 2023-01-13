require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Nemwel Boniface", email: "nemwel@gmail.com")
  end

  test "Should be valid" do
    assert @user.valid?
  end

  test "Name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "Email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "Name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "Email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
end
