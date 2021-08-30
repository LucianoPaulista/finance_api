json.extract! invoice, :id, :issuance_date, :observation, :total_invoice, :participant_id, :invoice_type_id
json.installments invoice.installments, partial: 'installments/installment', as: :installment
json.url invoice_url(invoice, format: :json)
