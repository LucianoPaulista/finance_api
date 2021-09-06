class InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[ show update destroy ]

  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = Invoice.all
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)
    erros = InvoiceService.new(invoice: @invoice).validate_business
    if !erros.empty?
      render json: {erros: erros}
    elsif @invoice.save
      render :show, status: :created, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    if @invoice.update(invoice_params)
      render :show, status: :ok, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_params
      params.require(:invoice).permit(:issuance_date, :observation, :total_invoice, :participant_id, :invoice_type_id)
    end
end
