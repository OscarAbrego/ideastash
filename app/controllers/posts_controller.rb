class PostsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource


  # GET /posts
  # GET /posts.json
  def index
    if params[:filter].blank?
      @posts = Post.all.order("created_at DESC")
      @posts_explore = Post.all.where(public: true ).order("created_at DESC")
    else
      @posts = Post.where("title like ?", "%#{params[:filter]}%")
      @posts_explore = Post.all.where(public: true ).where("title like ?", "%#{params[:filter]}%").order("created_at DESC")

    end
    # @posts_private = Post.where(user_id: :current_user.id )
    @post = Post.new

  end

  def technology
    @posts_explore = Post.technology.order("created_at DESC").where(public: true )
    render action: :index
  end
  def health
    @posts_explore = Post.health.order("created_at DESC").where(public: true )
    render action: :index
  end
  def business
    @posts_explore = Post.business.order("created_at DESC").where(public: true )
    render action: :index
  end
  def outdoors
    @posts_explore = Post.outdoors.order("created_at DESC").where(public: true )
    render action: :index
  end
  def home
    @posts_explore = Post.home.order("created_at DESC").where(public: true )
    render action: :index
  end
  def other
    @posts_explore = Post.other.order("created_at DESC").where(public: true )
    render action: :index
  end


# for indexprivate
  def indexprivate_technology
    @posts_private = Post.technology_private.order("created_at DESC")
    render action: :indexprivate
  end
  def indexprivate_health
    @posts_private = Post.health_private.order("created_at DESC")
    render action: :indexprivate
  end
  def indexprivate_business
    @posts_privateprivate = Post.business_private.order("created_at DESC")
    render action: :indexprivate
  end
  def indexprivate_outdoors
    @posts_private = Post.outdoors_private.order("created_at DESC")
    render action: :indexprivate
  end
  def indexprivate_home
    @posts_private = Post.home_private.order("created_at DESC")
    render action: :indexprivate
  end
  def indexprivate_other
    @posts_private = Post.other_private.order("created_at DESC")
    render action: :indexprivate
  end





  def indexprivate
    # @posts = Post.all
    @posts_private = Post.all.where(user_id: current_user.id ).order("created_at DESC")
    #code
    if params[:filter].blank?
      # @posts = Post.all.order("created_at DESC")
      @posts_private = Post.all.where(user_id: current_user.id ).order("created_at DESC")
    else
      # @posts = Post.where("title like ?", "%#{params[:filter]}%")
      @posts_private = Post.all.where(user_id: current_user.id ).where("title like ?", "%#{params[:filter]}%").order("created_at DESC")

    end
    # @posts_private = Post.where(user_id: :current_user.id )
    @post = Post.new

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments
    @comment = @post.comments.new
    # if @comments == []
    #   @comments = @post.comments.new
    # end
  end

  # GET /posts/new
  def new
    @post = Post.new
    # @current_group = params[:group_id]
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        format.js
      else
        flash[:alert] = @post.errors.full_messages
        @post = Post.new(post_params)
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :photo, :photo_cache,:remote_photo_url, :content, :category, :user_id, :likecount, :dislikecount, :reportcount, :commentcount, :public, :group_id)
    end
end
