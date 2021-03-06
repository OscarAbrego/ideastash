class GroupsController < ApplicationController
  # before_action :set_group, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /groups
  # GET /groups.json
  def index

    @groups = User.all
    @group = Group.new
    @available_groups = User.find(current_user.id).groups
    # @not_accepted = User.joins(:group_user).where(accepted:false)
    # @group_post = Post.joins(user: :group).where(group_id: current_user.groups.first)
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group_posts = @group.posts.all

  end

  def decision
    @groupUser = GroupUser.where(group_id: params[:id], user_id: params[:user_id])
    if params[:decision] == "true"
      @groupUser.update(accepted: true)
    else
      @groupUser.update(accepted: false)
    end
    redirect_to groups_path
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
        format.js
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :user_id, :description)
    end
end
