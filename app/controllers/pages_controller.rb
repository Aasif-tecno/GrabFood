class PagesController < ApplicationController
  def index
    @restaurant = Restaurant.all
    @item = Product.all
  end
end
