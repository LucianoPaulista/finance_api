class CreateInstallments < ActiveRecord::Migration[6.1]
  def change
    create_table :installments do |t|
      t.string :sequence_installments
      t.float :value
      t.belongs_to :invoice, null: false, foreign_key: true
      t.timestamps
    end
  end
end
