class CommentsController < ApplicationController
  before_action :set_post

  def index
    @comment = @post.comments.new
    @comments = CommentService.call(page: params[:page], post_id: params[:post_id])
  end

  # POST /posts/:post_id/comments
  def create
    @comment = @post.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_comments_path(@post), notice: "Comment was successfully updated." }
      else
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
