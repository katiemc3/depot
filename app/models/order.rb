class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type

  has_many :line_items, :dependent => :destroy 
  belongs_to :cart

  PAYMENT_TYPES = [ "Cheque", "Credit card", "Purchase order" ]

  def add_line_items_from_cart(cart)
  cart.line_items.each do |item|
    item.cart_id = nil
    line_items << item
  end
end


end
