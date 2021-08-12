class ParticipantesController < ApplicationController
  before_action :set_participante, only: %i[ show update destroy ]

  # GET /participantes
  # GET /participantes.json
  def index
    @participantes = Participante.all
    render json: @participantes
  end

  # GET /participantes/1
  # GET /participantes/1.json
  def show
   @participantes = Participante.find(params[:id])
   render json: @participantes
  end

  # POST /participantes
  # POST /participantes.json
  def create
    @participante = Participante.new(participante_params)

    if @participante.save
      render :show, status: :created, location: @participante
    else
      render json: @participante.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /participantes/1
  # PATCH/PUT /participantes/1.json
  def update
    if @participante.update(participante_params)
      render :show, status: :ok, location: @participante
    else
      render json: @participante.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participantes/1
  # DELETE /participantes/1.json
  def destroy
    if  @participante.destroy
      render json: {"result": "Registro #{params[:id]} excluído com sucesso."}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participante
      begin
        @participante = Participante.find(params[:id])
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
    def participante_params
      params.require(:participante).permit(:tipo_pessoa, :nome, :cnpj_cpf, :inscricao_rg)
    end
end
