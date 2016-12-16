class LikesController < ApplicationController

  # def index
  #   @likes = Like.all
  # end

  def create
    @post = Post.find(params[:post_id])
    @like = Like.new(:post => @post, :user => current_user, :polarity => true)
    @like.save
    
  end

  def update

  end

  private

  def set_post
    @like = Like.find(params[:id])
  end

  def like_params
    params.require(:like).permit(:user_id, :post_id, :polarity, posts_attributes: [:id])
  end

end
