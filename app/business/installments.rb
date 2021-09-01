class InstallmentsService
  def initialize(invoice:)
    @invoice = invoice
  end

  def total_installments
    @invoice.installments.sum(&:value)
  end

end
