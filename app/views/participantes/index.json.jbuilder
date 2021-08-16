json.array! @participantes do |participante|
  json.id participante.id
  json.tipo_pessoa participante.tipo_pessoa
  json.cnpj_cpf participante.cnpj_cpf
  json.inscricao_rg participante.inscricao_rg
  json.comentario "Este é um comentário personalizado"

  json.enderecos do
    json.partial! 'enderecos/endereco', endereco: participante.enderecos
  end


  json.created_at participante.created_at
end
