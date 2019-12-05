class Chatroom < ApplicationRecord
  has_many :comments, dependent: :destroy

  def sender(current_user)
    return current_user == User.find_by(id: user_a_id) ? User.find_by(id: user_b_id) : User.find_by(id: user_a_id)
  end
end
