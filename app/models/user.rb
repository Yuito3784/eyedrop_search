class User < ApplicationRecord
  has_many :eyedrops, through: :eyedrop_users
  has_many :eyedrop_users
end
