class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to new_post_path, notice:"保存しました"
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
  end

  def distory
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
