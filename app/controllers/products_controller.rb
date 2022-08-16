class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]


  def index
    @products = Product.all
    @new_order_item = OrderItem.new
  end


  def show
  end


  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_products_path, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @product.update(product_params)
        # @product.photos.attach(params[:product][:photos]) if params.dig(:product, :photos).present?
        format.html { redirect_to admin_products_path, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to admin_products_path, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end


    def product_params
      params.require(:product).permit(
        :name,
        :price_cents,
        :description,
        :active,

        :meta_title,
        :meta_keywords,
        :height,
        :width,
        :depth,
        
        :subtitle,
        :years,
        :color,
        
        product_category_ids: [],
        bike_model_ids: [],
        photos: []
      )
    end
end
