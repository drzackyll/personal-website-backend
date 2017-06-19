class PostsController < ApplicationController
  def index
    render :json => Post.all
  end

  def new
  end

  def create
    @post = Post.create(post_params)
  end

  def show
    render :json => Post.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update_attributes(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
