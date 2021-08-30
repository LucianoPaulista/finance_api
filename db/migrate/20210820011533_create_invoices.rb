class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.date :issuance_date
      t.string :observation
      t.float :total_invoice
      t.belongs_to :participant, null: false, foreign_key: true
      t.belongs_to :invoice_type, null: false, foreign_key: true
      t.timestamps
    end
  end
end
