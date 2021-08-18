class CreateParticipantes < ActiveRecord::Migration[6.1]
  def change
    create_table :participantes do |t|
      t.integer :tipo_pessoa
      t.string :nome
      t.string :cnpj_cpf
      t.string :inscricao_rg

      t.timestamps
    end
  end
end
