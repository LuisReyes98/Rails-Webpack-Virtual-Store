class ProductsController < ApplicationController
    before_action :get_product, only: [:show, :edit, :update, :destroy]

    def index
        @products = Product.all
    end

    def show

    end

    def create
        product = Product.create(product_params)

        redirect_to products_path
    end

    def edit
    
    end

    def update
        @product.update(product_params)

        redirect_to product_path(@product)
    end

    def destroy
        @product.destroy

        redirect_to products_path
    end

    private

    def product_params
        params.require(:product).permit(:group, :category, :name, :price, :on_stock, :image_src)
    end
    
    def get_product
        @product = Product.find(params[:id])
    end
    
end