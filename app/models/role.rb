class Role < ActiveRecord::Base
  has_many :permissions
  has_many :uses, :through => :permissions
end
