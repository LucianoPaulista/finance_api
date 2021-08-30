class InvoiceTypesController < ApplicationController
  before_action :set_invoice_type, only: %i[ show update destroy ]

  # GET /invoice_types
  # GET /invoice_types.json
  def index
    @invoice_types = InvoiceType.all
  end

  # GET /invoice_types/1
  # GET /invoice_types/1.json
  def show
  end

  # POST /invoice_types
  # POST /invoice_types.json
  def create
    @invoice_type = InvoiceType.new(invoice_type_params)

    if @invoice_type.save
      render :show, status: :created, location: @invoice_type
    else
      render json: @invoice_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoice_types/1
  # PATCH/PUT /invoice_types/1.json
  def update
    if @invoice_type.update(invoice_type_params)
      render :show, status: :ok, location: @invoice_type
    else
      render json: @invoice_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoice_types/1
  # DELETE /invoice_types/1.json
  def destroy
    @invoice_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_type
      begin
      @invoice_type = InvoiceType.find(params[:id])
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
    def invoice_type_params
      params.require(:invoice_type).permit(:description)
    end
end
