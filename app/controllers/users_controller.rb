class UsersController < ApplicationController
  # POST /signup
  # return authenticated token upon signup
  def create
    potential_user = User.find_by email: user_params[:email]
    if potential_user == nil
      user = User.create!(user_params)
      auth_token = AuthenticateUser.new(user.email, user.password).call
      response = { message: Message.account_created, auth_token: auth_token }
      json_response(response, :created)
    else
      json_response({error_message: "user is already registered"}, :ok)
    end

  end

  private

  def user_params
    params.permit(
      :fullname,
      :username,
      :password,
      :email,
      :email_confirmation,
      :email_opt_out
    )
  end
end