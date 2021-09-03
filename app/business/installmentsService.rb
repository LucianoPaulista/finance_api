class InstallmentsService
  def initialize(invoice:, erros:)
    @invoice = invoice
    @erros = erros
  end

  def validate_total_installments
    vr_total_installments =  @invoice.installments.sum(&:value)
    vr_total_invoice = @invoice.total_invoice
    @erros << "A soma das parcelas #{vr_total_installments.to_s} difere do total da fatura #{vr_total_invoice.to_s}" if vr_total_installments != vr_total_invoice
    @erros
  end



end
