class CreateLowInstallments < ActiveRecord::Migration[6.1]
  def change
    create_table :low_installments do |t|
      t.date :low_date
      t.float :value
      t.belongs_to :installment, null: false, foreign_key: true
      t.belongs_to :low_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
