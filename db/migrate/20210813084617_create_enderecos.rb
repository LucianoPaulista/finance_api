class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :endereco
      t.string :endereco_nro
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.belongs_to :participante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
