class InstallmentsController < ApplicationController
  before_action :set_installment, only: %i[ show update destroy ]

  # GET /installments
  # GET /installments.json
  def index
    @installments = Installment.all
  end

  # GET /installments/1
  # GET /installments/1.json
  def show
  end

  # POST /installments
  # POST /installments.json
  def create
    @installment = Installment.new(installment_params)

    if @installment.save
      render :show, status: :created, location: @installment
    else
      render json: @installment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /installments/1
  # PATCH/PUT /installments/1.json
  def update
    if @installment.update(installment_params)
      render :show, status: :ok, location: @installment
    else
      render json: @installment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /installments/1
  # DELETE /installments/1.json
  def destroy
    @installment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installment
      @installment = Installment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def installment_params
      params.require(:installment).permit(:sequence, :value, :invoice_id)
    end
end
