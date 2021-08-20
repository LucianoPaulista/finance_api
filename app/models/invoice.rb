class Invoice < ApplicationRecord
  belongs_to :participant
  belongs_to :invoice_type
end
