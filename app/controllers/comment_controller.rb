class CommentController < ApplicationController
  def store
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save

    Pusher.trigger('comment-channel','new-comment', {
      comment: @comment.comment,
      user: current_user,
      created_at: @comment.created_at.strftime("%k : %M"),
    })
    redirect_to '/welcome/index'
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
