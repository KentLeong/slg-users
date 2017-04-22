class SlgUsersController < ApplicationController
  before_action :set_slg_user, only: [:show, :update, :destroy]

  # GET /slg_users
  def index
    @slg_users = SlgUser.order('rank_elo DESC')

    render json: @slg_users
  end

  # GET /slg_users/1
  def show
    render json: @slg_user
  end

  # POST /slg_users
  def create
    @slg_user = SlgUser.new(slg_user_params)
    if @slg_user.save
      render json: @slg_user, status: :created, location: @slg_user
    else
      render json: @slg_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /slg_users/1
  def update
    if @slg_user.update(slg_user_params)
      render json: @slg_user
    else
      render json: @slg_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /slg_users/1
  def destroy
    @slg_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slg_user
      @slg_user = SlgUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def slg_user_params
      params.require(:slg_user).permit(:username, :rank_elo, :soloq_rank, :total_wins, :most_played, :yesterdays_rank, :discord_id, :summoner_id, :coins, :total_loses, :role => [])
    end
end
