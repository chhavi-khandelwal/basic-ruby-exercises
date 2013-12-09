class Item
  SALES_TAX = 0.1
  IMPORT_DUTY = 0.05

  attr_reader :sub_total, :details

  def initialize(name, imported_status, sales_tax_exemption, price)
    @name = name
    @imported_status = imported_status
    @sales_tax_exemption = sales_tax_exemption
    @price = price.to_f
    @sub_total = get_sub_total
    @details = get_details
  end

  def get_sales_tax
    !@sales_tax_exemption ? (@price * SALES_TAX).round(2) : 0.0
  end

  def get_import_duty
    @imported ? (@price * IMPORT_DUTY).round(2) : 0.0
  end

  def get_sub_total
    sub_total = @price + get_sales_tax + get_import_duty
  end

  def get_details
    details = []
    details.push(@name, @imported, @sales_tax_exemption, @price, @sub_total)
  end

  private :get_sales_tax, :get_import_duty, :get_sub_total, :get_details
end