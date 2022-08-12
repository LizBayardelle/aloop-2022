class OrdersController < ApplicationController
  before_action :set_order, only: %i[ update destroy ]

  def index
    @orders = Order.all
  end


  def show
    if Order.find(params[:id])
      @order = Order.find(params[:id])
    else
      @order = @current_order 
    end
  end


  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order) }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def mark_order_paid
    @order = Order.find(params[:id])
    if @order.update(paid: true)

      @current_order = Order.create!
      session[:order_id] = @current_order.id

      redirect_to order_path(@order)
    else
      redirect_to order_path(@order)
      flash[:warning] = "Oops! Something went wrong!"
    end
  end
  

  private


  def set_order
    @order = Order.find(params[:id])
  end


  def order_params
    params.require(:order).permit(
      :id,
      :user_id,
      :price,
      :token,

      :move_to_checkout,
      :shipping_info,
      :paid,
      
      :ship_to_name,
      :address_line_1,
      :address_line_2,
      :city,
      :state,
      :postal_code,
      :country
    )
  end
end
