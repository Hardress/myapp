class SimplePagesController < ApplicationController
  def landing_page
    @products = Product.limit(2)
  end
end
