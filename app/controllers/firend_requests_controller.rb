class FirendRequestsController < ApplicationController
  before_action :set_firend_request, only: [:show, :update, :destroy]

  # GET /firend_requests
  def index
    @firend_requests = FirendRequest.all

    render json: @firend_requests
  end

  # GET /firend_requests/1
  def show
    render json: @firend_request
  end

  # POST /firend_requests
  def create
    @firend_request = FirendRequest.new(firend_request_params)

    if @firend_request.save
      render json: @firend_request, status: :created, location: @firend_request
    else
      render json: @firend_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /firend_requests/1
  def update
    if @firend_request.update(firend_request_params)
      render json: @firend_request
    else
      render json: @firend_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /firend_requests/1
  def destroy
    @firend_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firend_request
      @firend_request = FirendRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def firend_request_params
      params.require(:firend_request).permit(:user_id, :user_invite_id)
    end
end
