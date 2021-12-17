class Eyedrop < ApplicationRecord
  has_many :users, through: :eyedrop_users
  has_many :eyedrop_users
end
