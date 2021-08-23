class LowInstallment < ApplicationRecord
  belongs_to :installment
  belongs_to :low_type
end
