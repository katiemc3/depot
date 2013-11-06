class StoreController < ApplicationController
  def index
	@products = Product.all
	@cart = current_cart
	<% = render @cart %>


  end
end
