class Group < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :cool_value
end
