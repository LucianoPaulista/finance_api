class EnderecosController < ApplicationController
  before_action :set_endereco, only: %i[ show update destroy ]

  # GET /enderecos
  # GET /enderecos.json
  def index
    @enderecos = Endereco.all
    render json: @enderecos
  end

  # GET /enderecos/1
  # GET /enderecos/1.json
  def show
    @enderecos = Endereco.find(params[:id])
    render json: @enderecos
  end

  # POST /enderecos
  # POST /enderecos.json
  def create
    @endereco = Endereco.new(endereco_params)

    if @endereco.save
      render :show, status: :created, location: @endereco
    else
      render json: @endereco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enderecos/1
  # PATCH/PUT /enderecos/1.json
  def update
    if @endereco.update(endereco_params)
      render :show, status: :ok, location: @endereco
    else
      render json: @endereco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enderecos/1
  # DELETE /enderecos/1.json
  def destroy
    @endereco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      begin
      @endereco = Endereco.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: {"result": "Registro #{params[:id]} não encontrado."}
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
    def endereco_params
      params.require(:endereco).permit(:cep, :endereco, :endereco_nro, :complemento, :bairro, :cidade, :estado, :participante_id)
    end
end
