json.extract! installment, :id, :sequence, :value, :invoice_id
json.low_installment installment.low_installments, partial: 'low_installments/low_installment', as: :low_installment
json.url installment_url(installment, format: :json)
