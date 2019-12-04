class Chatroom < ApplicationRecord
  has_many :comments, dependent: :destroy
end
