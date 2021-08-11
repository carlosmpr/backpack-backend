class RailsController < ApplicationController
  before_action :set_rail, only: [:show, :update, :destroy]

  # GET /rails
  def index
    @rails = Rail.all

    render json: @rails
  end

  # GET /rails/1
  def show
    render json: @rail
  end

  # POST /rails
  def create
    @rail = Rail.new(rail_params)

    if @rail.save
      render json: @rail, status: :created, location: @rail
    else
      render json: @rail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rails/1
  def update
    if @rail.update(rail_params)
      render json: @rail
    else
      render json: @rail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rails/1
  def destroy
    @rail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rail
      @rail = Rail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rail_params
      params.require(:rail).permit(:g, :friend_requests, :user_send_id, :user_invite_id)
    end
end
