require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Nemwel Boniface", email: "nemwel@gmail.com")
  end

  test "Should be valid" do
    assert @user.valid?
  end
end
