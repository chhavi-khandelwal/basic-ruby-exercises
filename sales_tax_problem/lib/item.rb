class Item
  SALES_TAX = 0.1
  IMPORT_DUTY = 0.05
  VALID_PRICE_REGEXP = /^[+]?\d+(\.\d+)?$/
  VALID_NAME_REGEXP = /^[\w+\s?]+$/
  STYLE = '|%-15s|%-15s|%-15s|%-15.2f|%-15.2f'
  FIGURE = 2
  @@items = []
  @@grand_total = 0
  FLAG = 'yes'

  def initialize(name, imported_status, sales_tax_exemption, price)
    @name = name
    @imported = imported_status == FLAG
    @sales_tax_exemption = sales_tax_exemption == FLAG
    @price = price.to_f
    @@items << self
    @@grand_total += sub_total
  end

  def self.valid_price?(price)
    price.match(VALID_PRICE_REGEXP)
  end

  def self.valid_name?(name)
    name.match(VALID_NAME_REGEXP)
  end

  def self.all
    @@items
  end

  def self.grand_total
    @@grand_total.floor
  end

  def to_s
    STYLE % [@name, @imported, @sales_tax_exemption, @price, sub_total]
  end

  private
  def get_sales_tax
    @sales_tax_exemption ? 0.00 : (@price * SALES_TAX).round(FIGURE)
  end

  def get_import_duty
    @imported ? (@price * IMPORT_DUTY).round(FIGURE) : 0.00
  end

  def sub_total
    @price + get_sales_tax + get_import_duty
  end

end