class LowTypesController < ApplicationController
  before_action :set_low_type, only: %i[ show update destroy ]

  # GET /low_types
  # GET /low_types.json
  def index
    @low_types = LowType.all
  end

  # GET /low_types/1
  # GET /low_types/1.json
  def show
  end

  # POST /low_types
  # POST /low_types.json
  def create
    @low_type = LowType.new(low_type_params)

    if @low_type.save
      render :show, status: :created, location: @low_type
    else
      render json: @low_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /low_types/1
  # PATCH/PUT /low_types/1.json
  def update
    if @low_type.update(low_type_params)
      render :show, status: :ok, location: @low_type
    else
      render json: @low_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /low_types/1
  # DELETE /low_types/1.json
  def destroy
    @low_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_low_type
      begin
        @low_type = LowType.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: {"result": "Registro #{params[:id]} não encontrado!!!"}
      rescue ActiveRecord::ActiveRecordError
        # handle other ActiveRecord errors
      rescue # StandardError
        # handle most other errors
      rescue Exception
        # handle everything else
        raise
      end
    end

    # Only allow a list of trusted parameters through.
    def low_type_params
      params.require(:low_type).permit(:description)
    end
end
