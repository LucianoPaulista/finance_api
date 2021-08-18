require "test_helper"

class ParticipantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @participante = participantes(:one)
  end

  test "should get index" do
    get participantes_url, as: :json
    assert_response :success
  end

  test "should create participante" do
    assert_difference('Participante.count') do
      post participantes_url, params: { participante: { cnpj_cpf: @participante.cnpj_cpf, inscricao_rg: @participante.inscricao_rg, nome: @participante.nome, tipo_pessoa: @participante.tipo_pessoa } }, as: :json
    end

    assert_response 201
  end

  test "should show participante" do
    get participante_url(@participante), as: :json
    assert_response :success
  end

  test "should update participante" do
    patch participante_url(@participante), params: { participante: { cnpj_cpf: @participante.cnpj_cpf, inscricao_rg: @participante.inscricao_rg, nome: @participante.nome, tipo_pessoa: @participante.tipo_pessoa } }, as: :json
    assert_response 200
  end

  test "should destroy participante" do
    assert_difference('Participante.count', -1) do
      delete participante_url(@participante), as: :json
    end

    assert_response 204
  end
end
