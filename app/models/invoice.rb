class Invoice < ApplicationRecord
  belongs_to :participant
  belongs_to :invoice_type
  has_many :installments
end
