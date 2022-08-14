class ProductModelsController < ApplicationController
  before_action :set_product_model, only: %i[ show edit update destroy ]


  def create
    @product_model = ProductModel.new(product_model_params)

    respond_to do |format|
      if @product_model.save
        format.html { redirect_to admin_products_path, notice: "Product model was successfully created." }
        format.json { render :show, status: :created, location: @product_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_model.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @product_model.update(product_model_params)
        format.html { redirect_to admin_products_path, notice: "Product model was successfully updated." }
        format.json { render :show, status: :ok, location: @product_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_model.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @product_model.destroy

    respond_to do |format|
      format.html { redirect_to admin_products_path, notice: "Product model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_product_model
      @product_model = ProductModel.find(params[:id])
    end


    def product_model_params
      params.require(:product_model).permit(
        :name,
        product_ids: [],
        bike_model_ids: []
      )
    end
end
