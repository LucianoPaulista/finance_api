for i in 1..9 do
  Participante.create(tipo_pessoa: 0, nome: "Luciano Dias Paulista", cnpj_cpf: "123456789", inscricao_rg: "987654321")
  Participante.create(tipo_pessoa: 1, nome: "Luciano Dias Paulista", cnpj_cpf: "123456789", inscricao_rg: "987654321")
end

for x in 1..3 do
  Endereco.create(cep: "16260000", endereco: "Rua Maestro Antônio Guerra", endereco_nro: "1039", complemento: "casa",
                  bairro: "Gentil Bernardo do Prado", cidade: "Coroados", estado: "SP", participante_id: 1)
end
