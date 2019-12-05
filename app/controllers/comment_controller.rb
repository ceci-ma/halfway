class CommentController < ApplicationController
  def store
    @comment = Comment.new(comment_params)
    @comment.chatroom = Chatroom.find(params[:comment][:chatroom].to_i)
    @comment.user = current_user
    # @chatroom = Chatroom.find_by(user_a_id: current_user.id, user_b_id: friend_id) || Chatroom.find_by(user_a_id: friend_id, user_b_id: current_user.id)
    # @comment.chatroom = @chatroom

    if @comment.user.avatar.attached?
      @picture = @comment.user.avatar.key
    else
      @picture = "default_teifzq"
    end

    @comment.save


    Pusher.trigger('comment-channel', 'new-comment', {
      id_a: @comment.chatroom.user_a_id.to_s,
      id_b: @comment.chatroom.user_b_id.to_s,
      user: @comment.user.id.to_s,
      comment: @comment.comment,
      first_name: current_user.first_name,
      created_at: @comment.created_at.strftime("%k:%M"),
      picture: @picture
    })
    redirect_to chatroom_path(@comment.chatroom)
    # render 'chatrooms/show'
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
