require 'test_helper'

class GroupsTest < ActiveSupport::TestCase
  fixtures :groups

  def test_group_can_be_saved
    group = groups(:valid)
    assert group.save
  end

  def test_group_must_be_named
    group = groups(:unnamed)
    assert ! group.save
  end
end
