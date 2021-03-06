class ChatroomsController < ApplicationController
  before_action :find_chatroom, only: [:show]

  def index
    @chatrooms = Chatroom.where(user_a_id: current_user.id) + Chatroom.where(user_b_id: current_user.id)
    @chatrooms_user = @chatrooms.pluck(:user_a_id, :user_b_id).flatten.uniq
    @users = User.all.reject { |user| @chatrooms_user.include?(user.id) }

  end

  def show
    @comments = Comment.where(chatroom: @chatroom).order(created_at: :asc)

    # @sender = @chatroom.user_a_id
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.user_a_id = current_user.id
    @chatroom.user_b_id = params[:user_b].to_i

    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end

  end

  private

  def chatroom_params
    params.permit(:user_a_id, :user_b_id)
  end

  def find_chatroom
    @chatroom = Chatroom.find(params[:id])
  end
end
