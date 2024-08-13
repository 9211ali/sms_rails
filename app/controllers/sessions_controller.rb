class SessionsController < ApplicationController
  skip_before_action :authenticate_request

  def login
    @user = Admin.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = jwt_encode(user_id: @user.id)
      render json: { token: token, admin_id: @user.id, status: :ok }
    else
      render json: { error: 'Invalid email or password', status: :unauthorized }
    end
  end

  def logout
  end
end
