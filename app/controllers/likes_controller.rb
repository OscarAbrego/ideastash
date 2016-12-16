class LikesController < ApplicationController

  # def index
  #   @likes = Like.all
  # end

  def create
    @like = Like.new()

    @like.update_attribute(polarity: true)

    @like.save

    redirect_to @like
  end

  def update

  end

end
