class User < ActiveRecord::Base
  has_many :quotables
  has_secure_password
  acts_as_followable
  acts_as_follower
end
