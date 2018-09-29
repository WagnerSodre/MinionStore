class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:name, :email, :phone, :product_id)
    end
end

