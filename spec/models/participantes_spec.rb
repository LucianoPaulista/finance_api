require 'rails_helper'

RSpec.describe 'Participantes', type: :model do
  context 'Crud Participantes' do
    it 'Create Participante' do
      participante = Participante.create(tipo_pessoa: 0, nome: "Luciano Dias Paulista", cnpj_cpf: "123456789", inscricao_rg: "987654321")

      expect(participante.tipo_pessoa).to eq(0)
      expect(participante.nome).to eq("Luciano Dias Paulista")
      expect(participante.cnpj_cpf).to eq("123456789")
      expect(participante.inscricao_rg).to eq("987654321")
    end
  end
end
