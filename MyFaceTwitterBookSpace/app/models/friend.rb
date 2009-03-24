class Friend < ActiveRecord::Base
  include WorkingDestroy

  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end

  def inspect
    "Mr. #{last_name}"
  end

  def cool_factor
    full_name.size
  end
end
