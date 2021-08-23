class LowInstallmentsController < ApplicationController
  before_action :set_low_installment, only: %i[ show update destroy ]

  # GET /low_installments
  # GET /low_installments.json
  def index
    @low_installments = LowInstallment.all
  end

  # GET /low_installments/1
  # GET /low_installments/1.json
  def show
  end

  # POST /low_installments
  # POST /low_installments.json
  def create
    @low_installment = LowInstallment.new(low_installment_params)

    if @low_installment.save
      render :show, status: :created, location: @low_installment
    else
      render json: @low_installment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /low_installments/1
  # PATCH/PUT /low_installments/1.json
  def update
    if @low_installment.update(low_installment_params)
      render :show, status: :ok, location: @low_installment
    else
      render json: @low_installment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /low_installments/1
  # DELETE /low_installments/1.json
  def destroy
    @low_installment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_low_installment
      @low_installment = LowInstallment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def low_installment_params
      params.require(:low_installment).permit(:low_date, :value, :installment_id, :low_type_id)
    end
end
