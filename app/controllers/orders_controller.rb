class OrdersController < ApplicationController
    before_action :get_order, only: [:show, :edit, :update, :destroy]

    def index
        @orders = Order.all
    end

    def show

    end

    def create
        order = Order.create(order_params)

        redirect_to orders_path
    end

    def edit
    
    end

    def update
        @order.update(order_params)

        redirect_to order_path(@order)
    end

    def destroy
        @order.destroy

        redirect_to orders_path
    end

    private

    def order_params
        params.require(:order).permit(:user_id, :number_of_products, :cost, :was_paid, :is_preorder, :date, :expiration_date)
    end
    
    def get_order
        @order = Order.find(params[:id])
    end
    
end