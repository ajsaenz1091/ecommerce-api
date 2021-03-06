class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /me
  def show
    user = User.find(session[:user_id])
    if user 
        render json: user, include: ['cart.cart_items']
    else
        render json: { errors: ["Not authorized"] }, status: :unauthorized
    end
  end

  # POST /users
  def create
    user = User.create!(user_params)
    cart = Cart.create(user_id:user.id)
    session[:user_id] = user.id
    render json: user, include: ['cart.cart_items'],  status: :created
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :email, :password, :password_confirmation) 
    end
end
