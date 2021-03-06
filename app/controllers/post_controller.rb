class PostController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      render action: :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:comment).merge(user: current_user)
    end
end
