class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :logradouro
      t.string :endereco_nro
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.belongs_to :participante

      t.timestamps
    end
  end
end
