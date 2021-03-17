class ProductsController < ApplicationController

  before_action :set_restaurant

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = @restaurant.products.build
  end

  # GET /products/1/edit
  def edit
    @product = @restaurant.products.find(params[:product_id])
  end

  # POST /products
  def create
    @product = @restaurant.products.build(product_params)

    if @product.save
      redirect_to @restaurant, notice: 'Product was successfully created.'
    else
      redirect_to @restaurant, notice: @product.errors.full_messages
    end
  end

  # PATCH/PUT /products/1
  def update
    @product = @restaurant.products.find(params[:id])
    if @product.update(product_params)
      redirect_to @restaurant, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  def destroy
    @product = @restaurant.products.find(params[:id])
    @product.destroy
    redirect_to @restaurant, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = @restaurant.products.find(params[:product_id])
    end
   
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :product_image, :restaurant_id)
    end
end
