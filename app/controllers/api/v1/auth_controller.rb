class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
  def create # POST /api/v1/login
    @user = User.find_by(username: user_login_params[:name])
    # @user.authenticate('password')
    byebug
    if @user && @user.authenticate(user_login_params[:password])
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    else
      render json: { message: "Invalid username or password" }, status: :unauthorized
    end
  end
  
  private
  
  def user_login_params
    # { user: { username: 'Chandler Bing', password: 'hi' } }
    params.require(:user).permit(:name, :password)
  
  end
end