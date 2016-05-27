class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    comment = Comment.new
    comment.post = @post
    comment.body = comment_params[:body]
    comment.user = current_user
    comment.save
    redirect_to @post
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end