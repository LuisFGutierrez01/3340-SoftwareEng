class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals
  # GET /goals.json
  def index
    @user= current_user
    if !@user.nil?
      @player = @user.player
    end
    @goals_own = Goal.where(player_id: @player.id)
    @goals = Goal.all
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/1/support
  def support
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
    # @goal = Goal.find(params[:id])
    # @player_goal = current_user.player.goal.id.to_s
    # @id = params[:id]
    # if user_signed_in? == false || @player_goal != @id
    #   redirect_to '/'
    # end
  end

  # POST /goals
  # POST /goals.json
  def create
    @player = current_user.player
    @goal = @player.goals.build(goal_params)
    @goal.user_id = @player.user_id
    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:title, :campaigng, :duedate, :funds_goal, :funds_current, :player_id)
    end
end
