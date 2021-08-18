class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[ show update destroy ]

  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.all
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      render :show, status: :created, location: @participant
    else
      render json: @participant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /participants/1
  # PATCH/PUT /participants/1.json
  def update
    if @participant.update(participant_params)
      render :show, status: :ok, location: @participant
    else
      render json: @participant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def participant_params
      params.require(:participant).permit(:name, :surname)
    end
end
