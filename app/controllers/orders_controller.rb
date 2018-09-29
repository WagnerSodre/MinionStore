class OrdersController < InheritedResources::Base

  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        ApplicationMailer.order_email(@order).deliver
        format.html { redirect_to(root_path, notice: 'Order was successfully created.') }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def order_params
      params.require(:order).permit(:name, :email, :phone, :product_id)
    end
end
