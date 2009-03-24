class User < ActiveRecord::Base
  include WorkingDestroy

  has_many :friends

  def cool_points
    coolness = 0
    friends.each do |friend|
      coolness += friend.cool_factor
    end
    coolness
  end

  def add_friend(friend)
    friends << friend
    self.class.class_eval %{
def #{friend.full_name.gsub(/\s/, "").downcase}
  friends.find(#{friend.id})
end
}
  end
end
