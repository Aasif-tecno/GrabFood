class PagesController < ApplicationController
  def index
    @restaurant = Restaurant.first(3)
    @item = Product.all
  end
end
