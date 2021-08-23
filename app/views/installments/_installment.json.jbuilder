json.extract! installment, :id, :sequence, :value, :invoice_id, :low_installments
json.url installment_url(installment, format: :json)
