class EyedropUser < ApplicationRecord
  belongs_to :eyedrop
  belongs_to :user
end
