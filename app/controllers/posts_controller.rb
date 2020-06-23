class PostsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    # raise
    # @user.favorited.order('created_at DESC')
    @sort_post = @posts.order('updated_at DESC')
  end

  def show
    # raise
    # set_post
    # raise
    # @post.views += 1
    # @post.update(set_post)
    # redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(set_post)
    redirect_to posts_path
  end

  def edit
  end

  def update
    @post.update(set_post)
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def find_id
    @post = Post.find(params[:id])
  end

  def set_post
    params.require(:post).permit(:title, :details, :views)
  end
end
