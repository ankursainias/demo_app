class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  # GET /posts or /posts.json
  def index
    @posts = PostService.call(page: params[:page])
  end

  # GET /posts/:id
  def show; end

  # GET /posts/new
  def new
    @post = Post.new
    @post.build_image
  end

  # GET /posts/:id/edit
  def edit
   @post.image || @post.build_image
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.save
    respond_to do |format|
      format.js
    end
  end

  # PATCH/PUT /posts/:id
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/:id
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:category, :title, :body, :contact_details, :email, image_attributes: %i[id name])
  end
end
