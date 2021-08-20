json.extract! invoice, :id, :issuance_date, :observation, :total_invoice, :participant_id, :invoice_type_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
