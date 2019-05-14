class UsersCartsConectorsController < ApplicationController
  before_action :set_users_carts_conector, only: [:show, :edit, :update, :destroy]

  # GET /users_carts_conectors
  # GET /users_carts_conectors.json
  def index
    @users_carts_conectors = UsersCartsConector.all
  end

  # GET /users_carts_conectors/1
  # GET /users_carts_conectors/1.json
  def show
  end

  # GET /users_carts_conectors/new
  def new
    @users_carts_conector = UsersCartsConector.new
  end

  # GET /users_carts_conectors/1/edit
  def edit
  end

  # POST /users_carts_conectors
  # POST /users_carts_conectors.json
  def create
    @users_carts_conector = UsersCartsConector.new(users_carts_conector_params)

    respond_to do |format|
      if @users_carts_conector.save
        format.html { redirect_to cart_path, notice: 'Users carts conector was successfully created.' }
        format.json { render cart_path, status: :created, location: @users_carts_conector }
      else
        format.html { render root_path}
        format.json { render json: @users_carts_conector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_carts_conectors/1
  # PATCH/PUT /users_carts_conectors/1.json
  def update
    respond_to do |format|
      if @users_carts_conector.update(users_carts_conector_params)
        format.html { redirect_to @users_carts_conector, notice: 'Users carts conector was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_carts_conector }
      else
        format.html { render :edit }
        format.json { render json: @users_carts_conector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_carts_conectors/1
  # DELETE /users_carts_conectors/1.json
  def destroy
    @users_carts_conector.destroy
    respond_to do |format|
      format.html { redirect_to cart_url, notice: 'Producto Eliminado del carrito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_carts_conector
      @users_carts_conector = UsersCartsConector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_carts_conector_params
      # params.require(:users_carts_conector).permit(:user_id, :product_id)
      params.permit(:user_id, :product_id, :amount)
    end
end
