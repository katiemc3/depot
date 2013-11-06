class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type

  has_many :line_items, :dependent => :destroy 
  belongs_to :cart
end
