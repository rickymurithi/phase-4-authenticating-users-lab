class UsersController < ApplicationController
  def show
    user = User.find(session[:user_id])
    if user.present?
      render json: user
    else
      render json: {error: "Not Authorized"}, status: :unauthorized
    end
  end
end
