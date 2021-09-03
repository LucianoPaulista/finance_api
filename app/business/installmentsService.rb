class InstallmentsService
  def initialize(installment: )
    @installment = installment
    @invoice = installment.invoice
    @erros = []
  end

  def validate_total_installments
    error = {}
    vr_total_installments =  @invoice.installments.sum(&:value)
    vr_total_invoice = @invoice.total_invoice
    error[:vr_total_installments] = "A soma das parcelas #{vr_total_installments.to_s} difere do total da fatura #{vr_total_invoice.to_s}." if vr_total_installments != vr_total_invoice
    addErros(error)
  end

  def validate_business
    self.validate_total_installments
    self.validate_code
    @erros
  end

  def validate_code
   code = @installment.code
   error = {}
   error[:code] = "O código da parcela deve ser informado." if code.empty?
   addErros(error)
  end

  private
  def addErros(error)
    @erros.push(error) if error.size > 0
  end
end
