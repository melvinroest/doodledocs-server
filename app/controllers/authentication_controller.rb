# app/controllers/authentication_controller.rb
class AuthenticationController < ApplicationController
  # return auth token once user is authenticated
  def authenticate
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
      data = {
          token: "Bearer #{auth_token}",
        }
    json_response(data)
  end

  private

  def auth_params
    params.require(:user).permit(:email, :password)
  end
end