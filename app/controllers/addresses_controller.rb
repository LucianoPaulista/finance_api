class AddressesController < ApplicationController
  before_action :set_address, only: %i[ show update destroy ]

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = Address.all
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(address_params)

    if @address.save
      render :show, status: :created, location: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    if @address.update(address_params)
      render :show, status: :ok, location: @address
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_params
      params.require(:address).permit(:street, :zip_code, :address_number, :complement, :state, :city, :neighborhood, :participant_id)
    end
end
