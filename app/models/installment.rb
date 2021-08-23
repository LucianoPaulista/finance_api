class Installment < ApplicationRecord
  belongs_to :invoice
  has_many :low_installments
end
