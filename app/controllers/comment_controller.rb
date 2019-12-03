class CommentController < ApplicationController
  def store
    @comment = Comment.new(comment_params)
    @comment.chatroom = Chatroom.find(params[:comment][:chatroom].to_i)
    @comment.user = current_user
    # @chatroom = Chatroom.find_by(user_a_id: current_user.id, user_b_id: friend_id) || Chatroom.find_by(user_a_id: friend_id, user_b_id: current_user.id)
    # @comment.chatroom = @chatroom
    @comment.save

    redirect_to chatroom_path(@comment.chatroom)

    Pusher.trigger('comment-channel', 'new-comment', {
      comment: @comment.comment,
      user: current_user,
      created_at: @comment.created_at.strftime("%k : %M")
    })


  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
