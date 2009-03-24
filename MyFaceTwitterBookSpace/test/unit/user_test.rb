require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  def test_can_create_valid_user
    user = User.new(:name => "Billy")
    assert user.valid?
  end
end
